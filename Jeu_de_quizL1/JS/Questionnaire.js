function correctAnswer() {
    let ans = document.querySelector('.div__buttons__correctAns');
    ans.style.background="#26DA22";
    ans.style.borderColor="#8FEF14";
}

function wrongAnswer1() {
    let ans = document.querySelector('.div__buttons__wronganswer1');
    ans.style.background="#EB2F2F";
    ans.style.borderColor="#EF5614";
}
function wrongAnswer2() {
    let ans = document.querySelector('.div__buttons__wronganswer2');
    ans.style.background="#EB2F2F";
    ans.style.borderColor="#EF5614";
}
function wrongAnswer3() {
    let ans = document.querySelector('.div__buttons__wronganswer3');
    ans.style.background="#EB2F2F";
    ans.style.borderColor="#EF5614";
}

const animateMainContent = () => {
    const elementsToAnimate = [
        {selector: ".div__name", transform: false},
        {selector: ".div__question", transform: false},
        {selector: ".div__buttons", transform: false},
        ...Array.from(document.querySelectorAll(".div__buttons")).map((feature) => ({
            element: feature,
            transform: true
        }))
    ]

    const animateElement = (element, delay = 0, transform = false) => {
        setTimeout(() => {
            element.style.opacity = 1;
            if(transform) {
                element.style.transform = "translateY(0)"};
        }, delay)
    }

    elementsToAnimate.forEach((item, index) => {
        const element = item.element || document.querySelector(item.selector);

        if(element) {
            animateElement(element, index * 50, item.transform)
        }
    })
}


animateMainContent();