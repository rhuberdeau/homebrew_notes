import React from 'react'
import HopForm from './HopForm'
import NoType from './NoType'
let    nextHopId = 0;

class HopSelector extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hops: [], selecting: false };
  }

  onScheduleAdded(object) {
    var array = [object];

    this.setState({hops: this.state.hops.concat(array)});
  }

  render() {
    let HopFormType = NoType;
    if (this.state.selecting == true) {
      HopFormType = HopForm;
    }
    return (
      <div className="row">
        <div className="field col-sm-4">
          <label htmlFor="hops">Hops</label>
          <select id="hop_names" name="hops" className="form-control">
            <option value="">Select a hop</option>
            <option value="Enigma">Enigma</option>
            <option value="Citra">Citra</option>
            <option value="Magnum">Magnum</option>
          </select>
        </div>
        <div className="col-sm-4">
          <label htmlFor="ounces">Ounces</label>
          <input type="text" id="hop_ounces" name="ounces" className="form-control"></input>
        </div>
        <div className="col-sm-4">
          <label htmlFor="time">Time</label>
          <input type="text" id="hop_time" name="time" className="form-control"></input>
        </div>
        <div>
          <button onClick={(event) => {
            event.preventDefault();

            this.onScheduleAdded({
              id: nextHopId++,
              name: document.getElementById("hop_names").value,
              ounces: document.getElementById("hop_ounces").value,
              time: document.getElementById("hop_time").value
            });

            document.getElementById("hop_names").value = 'Select a hop';
            document.getElementById("hop_ounces").value = '';
            document.getElementById("hop_time").value = '';
          }} >
            Add Hop
          </button>
          {this.state.hops.map(hop =>
            <div key={hop.id}>
              <input type="hidden" name={"hop_schedules[" + hop.id  + "][name]"} value={hop.name}></input>
              <input type="hidden" name={"hop_schedules[" + hop.id  + "][ounces]"} value={hop.ounces}></input>
              <input type="hidden" name={"hop_schedules[" + hop.id  + "][time]"} value={hop.time}></input>
            </div>
          )}
        </div>
      </div>
    );
  }
}

export default HopSelector
