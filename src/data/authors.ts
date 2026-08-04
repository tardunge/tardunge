import type { ImageMetadata } from 'astro';
import manojAvatar from '../assets/authors/manoj-babu-katragadda.jpeg';
import meghanathAvatar from '../assets/authors/meghanath-macha.jpeg';

export interface AuthorInfo {
  name: string;
  role: string;
  initials: string;
  avatar?: ImageMetadata;
  socials?: {
    github?: string;
    linkedin?: string;
  };
}

export const authors: Record<string, AuthorInfo> = {
  'Manoj Babu Katragadda': {
    name: 'Manoj Babu Katragadda',
    role: 'Principal Platform Engineer · Consultant',
    initials: 'MK',
    avatar: manojAvatar,
    socials: {
      github: 'https://github.com/tardunge',
      linkedin: 'https://www.linkedin.com/in/manojbabuiit',
    },
  },
  'Meghanath Macha': {
    name: 'Meghanath Macha',
    role: 'Head of AI',
    initials: 'MM',
    avatar: meghanathAvatar,
    socials: {
      linkedin: 'https://www.linkedin.com/in/meghanathmacha/',
    },
  },
};
