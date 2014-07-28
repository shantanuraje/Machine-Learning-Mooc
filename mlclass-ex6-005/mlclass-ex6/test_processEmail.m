function test_processEmail()
% processEmail.m - Email preprocessing

    epsilon = 1e-4;

    word_indices = processEmail("Machine learning is the science of getting computers to act without being explicitly programmed. In the past decade, machine learning has given us self-driving cars, practical speech recognition, effective web search, and a vastly improved understanding of the human genome. Machine learning is so pervasive today that you probably use it dozens of times a day without knowing it. Many researchers also think it is the best way to make progress towards human-level AI.");
    a = [988
        938
        877
       1666
       1457
       1162
        708
        330
       1699
         17
       1862
        162
       1319
        825
       1666
       1221
        411
        988
        938
        743
        713
       1766
       1474
        491
        245
       1286
       1569
        522
       1822
       1462
         74
        824
       1746
       1162
       1666
        801
        988
        938
        877
       1538
       1700
       1665
       1893
       1308
       1766
        883
       1162
       1694
        393
       1862
        916
        883
       1002
       1407
         60
       1678
        883
        877
       1666
        176
       1804
       1699
        997
       1321
       1715
        801
        949];
    assert(word_indices, a);

endfunction
