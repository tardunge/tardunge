import type { ImageMetadata } from 'astro';
import manojAvatar from '../assets/authors/manoj-babu-katragadda.jpeg';

export interface AuthorInfo {
  name: string;
  role: string;
  initials: string;
  avatar?: ImageMetadata;
}

export const authors: Record<string, AuthorInfo> = {
  'Manoj Babu Katragadda': {
    name: 'Manoj Babu Katragadda',
    role: 'Principal Platform Engineer · Consultant',
    initials: 'MK',
    avatar: manojAvatar,
  },
  'Meghanath Macha': {
    name: 'Meghanath Macha',
    role: 'Head of AI',
    initials: 'MM',
  },
};
