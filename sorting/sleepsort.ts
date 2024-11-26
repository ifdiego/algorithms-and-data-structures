function sleep(num: number) {
    setTimeout(function() {
        console.log(num);
    }, num * num);
}

function sleepsort(array: number[]) {
    for (let i = 0; i < array.length; i++) {
        sleep(array[i]);
    }
}

const a = [5, 3, 1, 2, 4];
sleepsort(a);
