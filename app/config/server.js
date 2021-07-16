module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 8080),
  url: 'http://localhost',
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', 'b3547abf4aded017ffaea02e1bebd66e'),
    },
  },
});
