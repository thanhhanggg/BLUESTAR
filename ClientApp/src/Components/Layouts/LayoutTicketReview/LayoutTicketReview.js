import React from 'react';
import Booking from '../BKP/Booking';
import Container from '@mui/material/Container';
import HeaderReview from '../HeaderReview/HeaderReview';
import "./LayoutTicketReview.css"
import Footer from '../Footer/Footer';
export default function LayoutTicketReview({children }) {
    return (
        <>
            <HeaderReview/>
            {children}
            <Footer/>
        </>
    )
}