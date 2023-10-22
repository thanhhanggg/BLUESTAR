import React, { useState } from 'react';
import Booking from '../BKP/Booking';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Grid';
import Container from '@mui/material/Container';
import Button from '@mui/material/Button';
import Header from '../Header/Header';
import "./MainLayoutLogin.css"
import Footer from '../Footer/Footer';

export default function MainLayOut({ children }) {
    return (
        <>
            <Header />
            {children}  
            <Footer/>             
        </>
    )
}