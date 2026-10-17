export type MediaPlatform = "youtube" | "facebook" | "dailymotion";

export interface PortfolioItem {
  id: number;
  title: string;
  videoId: string;
  platform: MediaPlatform;
  thumbnail: string;
  category:string;
}

export interface ServiceItem {
  id: number;
  title: string;
  description: string;
  image: string;
}
