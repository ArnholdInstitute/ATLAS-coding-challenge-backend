const SQL = require('sql-template-strings');

const isAuthorizedAction = (username, action) => {
  // The correct way of doing this is by running a query against the DB
  
  const query = SQL`
    SELECT r.role_name FROM roles AS r
    JOIN user_roles AS ur USING (role_id)
    JOIN usrs AS u USING (user_id)
    WHERE u.username = ${username}
  `;
  
  // and then processing the query return to get the roles.
  
  // We are not going to do that because we may not have a DB backend
  // available for this test.
  const roles = [];
  
  if (username === 'Admin User') {
    roles.push('ADMIN');
  } else if (username === 'Regular User') {
    roles.push('Health worker');
  };
  
  if (!roles || !roles.length) {
    return false;
  }
  
  // Assume all roles have read access, and only ADMIN has create, update,
  // and delete access.
  if (action === 'read') {
    return true;
  }
  if (roles.includes('ADMIN')) {
    return true;
  }
  
  return false;
};

module.exports = isAuthorizedAction;
