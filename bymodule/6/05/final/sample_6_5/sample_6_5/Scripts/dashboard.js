ASPxClientControl.GetControlCollection().ControlsInitialized.AddHandler(function () {
    $('#eventGauge').dxCircularGauge({
        value: eventCount,
        title: 'Events (Current Year)',
        scale: {
            endValue: endValue,
            tickInterval: 5,
            tick: {
                length: 10,
                width: 2,
            },
        },
        valueIndicator: {
            type: 'twoColorNeedle',
            spindleSize: 35,
            width: 10,
        },
        rangeContainer: {
            width: 10,
            ranges: [
                { color: '#00c554', startValue: 0, endValue: endGreenRange },
                { color: '#ff0000', startValue: endGreenRange, endValue: endValue },
            ],
        },
    });

    $('#capReqGauge').dxBarGauge({
        values: [capReqCount, roomBookingCount],
        title: 'Room Bookings (Current Year)',
        endValue: capReqEndValue,
        label: {
            format: {
                precision: 0
            }
        },
        legend: {
            visible: true,
            verticalAlignment: 'bottom',
            horizontalAlignment: 'center',
            customizeText: ({
                item: { index }
            }) => (['Required', 'Confirmed'][index])
        }
    });
});