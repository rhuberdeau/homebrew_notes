import React from 'react'
class HopSelector extends React.Component {
  constructor(props) {
    super(props);
    this.onHopSelected = this.onHopSelected.bind(this);
    this.state = { selectedPayType: null };
  }

  onHopSelected(event) {
    this.setState({ selectedPayType: event.target.value });
  }

  render() {
    return (
      <div className="field">
        <label htmlFor="order_pay_type">Pay type</label>
        <select onChange={this.onHopSelected} id="pay_type" name="order[pay_type]" className="form-control">
          <option value="">Select a hop</option>
          <option value="Enigma">Enigma</option>
          <option value="Citra">Citra</option>
          <option value="Magnum">Magnum</option>
        </select>
      </div>
    );
  }
}
export default HopSelector
