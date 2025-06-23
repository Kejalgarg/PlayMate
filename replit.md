# PlayMate - Sports Matchmaking Platform

## Overview

PlayMate is a full-stack web application designed as a sports matchmaking platform for kids and teens. The platform helps young athletes find teammates, coordinate games, and engage in sports activities through intelligent matching and smart assistance. Built with modern web technologies, it features a React frontend, Express.js backend, and PostgreSQL database with integration through Google's Gemini API.

## System Architecture

### Frontend Architecture
- **Framework**: React 18 with TypeScript for type safety and modern development
- **Routing**: Wouter for lightweight client-side routing
- **UI Framework**: shadcn/ui components built on Radix UI primitives for accessibility
- **Styling**: Tailwind CSS with custom design system and CSS variables
- **State Management**: TanStack React Query for server state management
- **Build Tool**: Vite for fast development and optimized production builds

### Backend Architecture
- **Runtime**: Node.js with ES modules
- **Framework**: Express.js for RESTful API endpoints
- **Authentication**: Replit Auth with OpenID Connect integration
- **Session Management**: PostgreSQL-backed sessions using connect-pg-simple
- **Development**: Hot reloading with Vite middleware integration

### Database Design
- **Primary Database**: PostgreSQL with Neon serverless driver
- **ORM**: Drizzle ORM for type-safe database operations
- **Schema Management**: Drizzle Kit for migrations and schema evolution
- **Key Tables**:
  - Users (mandatory for Replit Auth)
  - Sessions (mandatory for Replit Auth)
  - Sports catalog
  - User sports preferences
  - Friend requests and friendships
  - Game matches and participants
  - Chat messages
  - Badges and achievements

## Key Components

### Authentication System
- **Replit Auth Integration**: Mandatory user and session tables for Replit's authentication system
- **OpenID Connect**: Standards-based authentication flow
- **Session Security**: HTTP-only cookies with secure flags and session store

### Sports Management
- **Sports Catalog**: Centralized database of available sports with emoji representations
- **User Preferences**: Skill level tracking and sport-specific preferences
- **Activity Levels**: XP and leveling system to gamify participation

### Social Features
- **Friend System**: Request-based friendship model with pending/accepted states
- **Real-time Chat**: Message system between friends for game coordination
- **Match Suggestions**: AI-powered recommendations based on preferences and proximity

### Smart Integration
- **Google Gemini API**: Conversational assistance for sports coordination
- **Chat Response Generation**: Context-aware responses focused on youth sports
- **Game Coordination**: Smart assistance for organizing matches and activities

## Data Flow

1. **User Authentication**: Replit Auth → OpenID Connect → Session Creation
2. **Profile Setup**: User selects sports preferences and skill levels
3. **Match Discovery**: System analyzes preferences to suggest compatible players
4. **Social Interaction**: Friend requests → Chat system → Game coordination
5. **Activity Tracking**: XP/level progression based on participation

## External Dependencies

### Core Dependencies
- **@google/genai**: Google Gemini AI integration for chat assistance
- **@neondatabase/serverless**: PostgreSQL connection via Neon's serverless platform
- **drizzle-orm**: Type-safe database ORM with PostgreSQL dialect
- **@tanstack/react-query**: Server state management and caching

### UI Dependencies
- **@radix-ui/react-***: Comprehensive set of accessible UI primitives
- **tailwindcss**: Utility-first CSS framework
- **class-variance-authority**: Component variant management
- **lucide-react**: Icon library

### Authentication & Session
- **openid-client**: OpenID Connect client implementation
- **passport**: Authentication middleware
- **connect-pg-simple**: PostgreSQL session store
- **express-session**: Session management middleware

## Deployment Strategy

### Development Environment
- **Replit Platform**: Cloud-based development with integrated PostgreSQL
- **Hot Reloading**: Vite development server with Express middleware
- **Port Configuration**: Local port 5000 mapped to external port 80

### Production Build
- **Frontend**: Vite build process generating optimized static assets
- **Backend**: esbuild bundling for Node.js deployment
- **Database**: Persistent PostgreSQL via environment variable configuration
- **Scaling**: Autoscale deployment target for traffic management

### Environment Configuration
- **DATABASE_URL**: PostgreSQL connection string (required)
- **GEMINI_API_KEY/GOOGLE_API_KEY**: AI service authentication
- **SESSION_SECRET**: Secure session encryption key
- **REPLIT_DOMAINS**: Authentication domain configuration

## Changelog

## Recent Changes

### December 23, 2024 - Backend and Database Implementation
- ✅ Complete database schema with 11 tables including users, sports, games, friends, chat, badges
- ✅ Full REST API with 25+ endpoints for all platform features
- ✅ Authentication system using Replit Auth with OpenID Connect
- ✅ Smart integration with Gemini API for chat assistance and game coordination
- ✅ XP and leveling system with automatic badge awards
- ✅ Smart matchmaking algorithm based on sports preferences and skill levels
- ✅ Real-time chat system with smart assistance features
- ✅ Game hosting and joining functionality with participant tracking
- ✅ Friend request system with status management
- ✅ Leaderboard and dashboard statistics
- ✅ Database seeded with 10 sports and 15 achievement badges

### December 22, 2024 - Frontend Development
- ✅ Complete HTML/CSS/JavaScript frontend (playmate-ai-frontend.html)
- ✅ Detailed profile showcase page (profile-showcase.html) 
- ✅ Interactive dashboard with live map and game listings (dashboard-showcase.html)
- ✅ Cricket featured prominently replacing soccer throughout platform
- ✅ Responsive design with youth-friendly interface
- ✅ Mock data integration for demonstration purposes

### June 22, 2025 - Initial Project Setup
- ✅ Project architecture established
- ✅ Technology stack selected (React, Express, PostgreSQL, Drizzle ORM)

## User Preferences

Preferred communication style: Simple, everyday language.