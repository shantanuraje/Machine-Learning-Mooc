function test_emailFeatures()
% emailFeatures.m - Feature extraction from emails

    word_indices = processEmail("Machine learning is the science of getting computers to act without being explicitly programmed. In the past decade, machine learning has given us self-driving cars, practical speech recognition, effective web search, and a vastly improved understanding of the human genome. Machine learning is so pervasive today that you probably use it dozens of times a day without knowing it. Many researchers also think it is the best way to make progress towards human-level AI.");
    x = sum(emailFeatures(word_indices));
    assert(x, 50);

    word_indices = processEmail("If you are a motivated and qualified individual - I will personally demonstrate to you a system that will make you $1,000 per week or more! This is NOT mlm");
    x = sum(emailFeatures(word_indices));
    assert(x, 22);

endfunction
