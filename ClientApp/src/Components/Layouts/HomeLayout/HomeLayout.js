import React from 'react';
import Booking from '../BKP/Booking';
import Container from '@mui/material/Container';
import Header from '../Header/Header';
import "./HomeLayout.css"
import Footer from '../Footer/Footer';
export default function DefaultLayOut({children }) {
    return (
        <>
            <Header />
            <div className="body-main-home">
            <Booking/>
                {/*Booking main*/}
                <div className="Booking-Main-Body">
                   
                        {children}
                    
                </div>
               
            </div>
            <Footer />
        </>
    )
}