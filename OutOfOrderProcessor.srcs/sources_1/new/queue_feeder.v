module queue_feeder(
    input [95:0] inOperationA, input validA,
    input [95:0] inOperationB, input validB,
    input [95:0] inOperationC, input validC,
    output [95:0] outOperationA, output outValidA,
    output [95:0] outOperationB, output outValidB,
    output [95:0] outOperationC, output outValidC
    );

    assign outValidA = validA | validB | validC;
    assign outValidB = (validA) ? (validB | validC) :
                            (validB) ? (validC) :
                            1'b0;
    assign outValidC = (validA & validB) ? (validC) :
                        1'b0;

    assign outOperationA = validA ? inOperationA :
                            validB ? inOperationB :
                            inOperationC;
    
    assign outOperationB = (validA) ? validB ? inOperationB :
                                    inOperationC :
                            inOperationC;
                        
    assign outOperationC = inOperationC;

endmodule