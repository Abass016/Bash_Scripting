echo "  A simple quiz game"
echo 

echo "You are asked to answer each questions accordingly"
echo
score=0
questions(){
     
    echo "1. What is the basic unit of life?"
    echo -e "A. Atom    B. Cell    C. Tissue    D. Organ : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "2. What is the process of converting sugar into energy called?"
    echo -e "A. Photosynthesis    B. Respiration    C. Fermentation    D. Digestion : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "3. Which organ is responsible for pumping blood in the human body?"
    echo -e "A. Brain    B. Lung    C. Heart    D. Kidney : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "4. What is the genetic material in living organisms?"
    echo -e "A. RNA    B. DNA    C. Protein    D. Lipid : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "5. What process do plants use to absorb water from the soil?"
    echo -e "A. Transpiration    B. Osmosis    C. Diffusion    D. Evaporation : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "6. Which part of the cell contains the genetic material?"
    echo -e "A. Cytoplasm    B. Nucleus    C. Mitochondria    D. Ribosome : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "7. What type of macromolecule are enzymes?"
    echo -e "A. Lipid    B. Carbohydrate    C. Protein    D. Nucleic Acid : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "8. What is the primary function of red blood cells?"
    echo -e "A. Fight infection    B. Carry oxygen    C. Clot blood    D. Produce hormones : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "9. Which process is responsible for the exchange of gases in the lungs?"
    echo -e "A. Diffusion    B. Active transport    C. Endocytosis    D. Exocytosis : \c"
    read answer
    if [[ "$answer" == "A" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "10. What type of reproduction involves two parents?"
    echo -e "A. Asexual    B. Sexual    C. Budding    D. Fragmentation : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "11. What is the powerhouse of the cell?"
    echo -e "A. Nucleus    B. Mitochondria    C. Ribosome    D. Endoplasmic Reticulum : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "12. What type of blood cells are responsible for immunity?"
    echo -e "A. Platelets    B. Red blood cells    C. White blood cells    D. Plasma : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "13. What is the primary function of chlorophyll?"
    echo -e "A. Absorb water    B. Absorb sunlight    C. Produce glucose    D. Release oxygen : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "14. Which vitamin is primarily produced when exposed to sunlight?"
    echo -e "A. Vitamin A    B. Vitamin B12    C. Vitamin C    D. Vitamin D : \c"
    read answer
    if [[ "$answer" == "D" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "15. What structure regulates the movement of substances in and out of a cell?"
    echo -e "A. Cell wall    B. Cell membrane    C. Cytoplasm    D. Nucleus : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "16. What type of organism is a mushroom?"
    echo -e "A. Plant    B. Animal    C. Fungi    D. Bacteria : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "17. What process do bacteria use to reproduce asexually?"
    echo -e "A. Budding    B. Fragmentation    C. Binary fission    D. Spores : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "18. Which part of the brain controls balance and coordination?"
    echo -e "A. Cerebrum    B. Cerebellum    C. Brainstem    D. Thalamus : \c"
    read answer
    if [[ "$answer" == "B" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "19. What is the function of the large intestine?"
    echo -e "A. Digestion    B. Absorption of nutrients    C. Absorption of water    D. Excretion : \c"
    read answer
    if [[ "$answer" == "C" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    echo "20. What is the term for a group of similar cells that perform a specific function?"
    echo -e "A. Tissue    B. Organ    C. Organ system    D. Organism : \c"
    read answer
    if [[ "$answer" == "A" ]]; then
        echo "correct"
        ((score++))
    else
        echo "incorrect"
    fi

    # At the end, display the total score
    echo "Your total score is: $score"
}



questions
/
