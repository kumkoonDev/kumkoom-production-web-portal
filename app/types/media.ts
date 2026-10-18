export type MediaPlatform = "youtube" | "facebook" | "dailymotion" | "googledrive" | "direct_video";

export interface PortfolioItem {
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
