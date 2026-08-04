import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const blog = defineCollection({
  loader: glob({ base: './src/content/blog', pattern: '**/*.{md,mdx}' }),
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      description: z.string().max(180),
      pubDate: z.coerce.date(),
      authors: z.array(z.string()).min(1),
      team: z.string(),
      heroImage: image(),
      tags: z.array(z.string()).default([]),
      status: z.enum(['published', 'archived', 'draft']).default('draft'),
      relatedProjects: z.array(z.string()).default([]),
    }),
});

export const collections = { blog };
