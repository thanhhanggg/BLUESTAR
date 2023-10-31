import React, { useState } from 'react'
import './HomePage.css'
import logo from './logo.png'
import sea_image from './sea_image.svg'
import image_tour from './image_tour.svg'
export default function HomePage() {
    const [selectedOption, setSelectedOption] = useState('');

    const handleOptionChange = (event) => {
        setSelectedOption(event.target.value);
    };
    const handleSearchClick = () => {
        // Chức năng tìm kiếm nha
    }
    // Array này sẽ render các hình bên dưới, còn nếu có ảnh sẵn cứ gắn link vô đây , không thì BE tự code nha
    const images_tour = [
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'SA PA' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'SA PA' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'SA PA' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'SA PA' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
        { image_tour: image_tour, address_name: 'NHA TRANG' },
    ];
    return (
        <div className='homepage__container'>
            
            <div className='homepage__container--content'>
                <h2 className='content--title'>TẠI SAO NÊN CHỌN BLUE STAR?</h2>
                <div className='content-wrapper'>
                    <div className='content--item'>
                        <div className='content-item--left'><img className='icon-item' src={logo} alt="" /></div>
                        <div className='content-item--right'>
                            <p>Easy to use</p>
                            <p>So easy to use, even your dog could do it.</p>
                        </div>
                    </div>
                    <div className=' content--item'>
                        <div className='content-item--left'><img className='icon-item' src={logo} alt="" /></div>
                        <div className='content-item--right'>
                            <p>Elite clientele</p>
                            <p>We have all the dog, the greatest dog</p>
                        </div>
                    </div>
                    <div className='content--item'>
                        <div className='content-item--left'><img className='icon-item' src={logo} alt="" /></div>
                        <div className='content-item--right'>
                            <p>Guaranteed to word</p>
                            <p>Find the love of your dog's life or your money back</p>
                        </div>
                    </div>
                </div>
                <h1 className='content--middle'>"I no longer have to sniff other dogs for love. I have found the hostted Corgi on TinDog. Woof." </h1>
                {/* Truyền ảnh trong data render ra hoăc ảnh tĩnh luôn */}
                <img className='content__image--dog' src={logo} alt="image-dog" />
                <h5 className='content--address'>Pebles, New York</h5>
                {/* Chỗ thẻ h5 này tự truyền data vào nha */}
            </div>
            <h2 className='container__image--title'>ĐỊA ĐIỂM NỔI TIẾNG TẠI VIỆT NAM</h2>
            {/* Ảnh svg cho nó zoom ko bị vỡ */}
            <img className='container__image--img' src={sea_image} alt="" />
            <div className='homepage__container--image'>
                {/* Render image grid, slice sẽ giới hạn ảnh render ra tối đa 9, nếu muốn tự động render ra theo
                số ảnh trong mảng, ví dụ mảng có 15 ảnh thì xóa luôn .slice(0,8), nó sẽ tự động render ảnh theo cấu trúc 3 row
                , 3 col */}
                <div className='grid-container--image'>
                    {images_tour.slice(0,9).map((image, index) => (
                        <div key={index} className='grid-item--image'>
                            <img src={image.image_tour} alt={`Image ${index + 1}`} />
                            <p>{image.address_name}</p>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    )
}
