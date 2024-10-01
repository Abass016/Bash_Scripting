echo "A simple quiz game"
echo 
echo "You are asked to answer each question accordingly"
echo
echo "Each Questions carries 2 marks"
echo
echo "The quiz is a general questions that contains both English and Mathematics"
score=0

questions() {
    questions_array=(
        "1. What is the value of 7 x 8? A. 54 B. 56 C. 58 D. 60"
        "2. What is the synonym of 'benevolent'? A. Malevolent B. Kind C. Cruel D. Harsh"
        "3. Solve for x: 3x + 5 = 17. A. 4 B. 5 C. 6 D. 7"
        "4. Which of the following is a metaphor? A. He runs like the wind B. She is a shining star C. The car roared to life D. The leaves danced in the wind"
        "5. What is the square root of 144? A. 10 B. 11 C. 12 D. 13"
        "6. Which of these is an antonym of 'abundant'? A. Plentiful B. Sufficient C. Scarce D. Overflowing"
        "7. If a triangle has sides of length 3, 4, and 5, what kind of triangle is it? A. Equilateral B. Isosceles C. Scalene D. Right"
        "8. What figure of speech is used in the sentence 'The wind whispered through the trees'? A. Simile B. Metaphor C. Personification D. Hyperbole"
        "9. What is the perimeter of a rectangle with length 5 cm and width 3 cm? A. 10 cm B. 16 cm C. 18 cm D. 20 cm"
        "10. What is the meaning of the word 'ambiguous'? A. Clear B. Uncertain C. Certain D. Precise"
        "11. If a circle has a radius of 7 cm, what is its circumference (use π ≈ 22/7)? A. 44 cm B. 48 cm C. 49 cm D. 50 cm"
        "12. Choose the correct sentence: A. He don't like apples B. He doesn't likes apples C. He doesn't like apples D. He not like apples"
        "13. Simplify: 15 ÷ 3 + 4 x 2. A. 14 B. 10 C. 11 D. 12"
        "14. Which word is the correct spelling? A. Receive B. Recieve C. Receeve D. Receiv"
        "15. If a car travels at 60 km/h, how far will it travel in 3 hours? A. 120 km B. 150 km C. 180 km D. 200 km"
        "16. Which of the following is an adjective? A. Quickly B. Bright C. Run D. Loudly"
        "17. Solve for y: 2y - 6 = 10. A. 8 B. 7 C. 9 D. 10"
        "18. What is the past tense of 'go'? A. Goed B. Going C. Went D. Goes"
        "19. What is the area of a triangle with base 5 cm and height 8 cm? A. 20 cm² B. 30 cm² C. 35 cm² D. 40 cm²"
        "20. Which of the following is an example of a homophone? A. There - Their B. Read - Write C. Big - Small D. Jump - Run"
    )

    answers_array=(
        "B" "B" "A" "B" "C" "C" "D" "C" "B" "B" "A" "C" "A" "A" "C" "B" "A" "C" "A" "A"
    )


    for i in ${!questions_array[@]}; do
        echo "${questions_array[i]}"
        echo -e "Your answer: \c"
        read answer
        if [[ "${answer^^}" == "${answers_array[i]}" ]]; then
            echo "Correct!" 
            ((score++))
        else
            echo "Incorrect. The correct answer was ${answers_array[i]}."
        fi
        echo
    done

    echo "Your total score is: $score out of ${#questions_array[@]}"

}
questions
