import uuid from 'uuidv4';

class User {
  constructor(props) {
    Object.assign(this, props);

    if (!props.id) {
      this.id = uuid.uuid();
    }

    // rename keys for database update
    this.first_name = this.firstName;
    this.last_name = this.lastName;
    this.postal_code = this.postalCode; 1
    this.state_province = this.state;

    // delete unneeded keys
    delete this.firstName;
    delete this.lastName;
    delete this.postalCode;
    delete this.state;
    delete this.passwordConfirmation;
  }

  toArray() {
    return Object.keys(this).map((key) => [key, this[key]]);
  }

  toString() {
    return (
      this.username +
      ', ' +
      this.password +
      ', ' +
      this.first_name +
      ', ' +
      this.last_name +
      ', ' +
      this.email +
      ', ' +
      this.phone +
      ', ' +
      this.address +
      ', ' +
      this.city +
      ', ' +
      this.country +
      ', ' +
      this.state_province +
      ', ' +
      this.company
    );

  }

  toJSON() {
    return { ...this };
  }
}

export default User;
