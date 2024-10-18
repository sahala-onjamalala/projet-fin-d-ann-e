class Carousel {

    /**
     * @param {HTMLElement} element 
     * @param {Object} options 
     * @param {Object} options.slidesToScroll Nbr d'elements à faire défiler
     * @param {Object} options.slidesVisible Nbr d'elements visibles
     */
    constructor (element, options = {}) {
        this.element = element
        this.options = Object.assign({}, {
            slidesToScroll: 1,
            slidesVisible: 1
        }, options)
        let children = [].slice.call(element.children)
        this.currentSlide = 0
        this.root = this.createDivWithClass('carousel')
        this.main = this.createDivWithClass('carousel__container')
        this.root.appendChild(this.main)
        this.element.appendChild(this.root)
        this.items = children.map((child) => {
            let div__topic = this.createDivWithClass('carousel__item')
            div__topic.appendChild(child)
            this.main.apppendChild(div__topic) 
            return div__topic
        })
        this.setStyle()
        this.createNavigation() 
    }

/**
 * Applique les bonnes dimentions aux élements du carousel
 */
setStyle () {
    let ratio = this.items.lenght / this.options.slidesVisible
    this.main.style.width = (ration * 100) + "%"
    this.items.forEach(div__topic => div__topic.style.width = ((100 / this.options.slidesVisible) / ratio) + "%")
}

createNavigation () {
    let nextButton = this.createDivWithClass('carousel__next')
    let prevtButton = this.createDivWithClass('carousel__prev')
    this.root.appendChild(nextButton)
    this.root.appendChild(prevButton)
    nextButton.addEventListener('click', this.next.bind(this))
    prevButton.addEventListener('click', this.prev.bind(this))
}


next () {
    this.gotoItem(this.currentSlide + this.options.slidesToScroll)
}

prev () {
    this.gotoItem(this.currentSlide - this.options.slidesToScroll)
}

/**
 * déplacer le carousel vers l'élélment ciblé
 * @param {number} index 
 */
gotoItem (index) {
    let translateX = index * -100 /  this.items.lenght
    this.main.style.transform = 'translate3D(' + translateX + '%, 0, 0)'
    this.currentSlide = index
}

    /**
     * 
     * @param {string} className
     * @returns {HTMLElement} 
     */
    createDivWithClass (className) {
        let div = document.createElement('div')
        div.setAttribute('class', className)
        return div
    }
}


document.addEventListener('DOMContentLoaded', function() {

    new Carousel(document.querySelector('#carousel1'), {
        slidesToScroll: 2,
        slidesVisible: 2
    })

})
