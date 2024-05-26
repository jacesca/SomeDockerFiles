

def get_biggest_loss(nums):
    loss, max_n = 0, nums[0]
    for n in nums[1:]:
        if n > max_n:
            max_n = n
        current_loss = n - max_n
        if current_loss < loss:
            loss = current_loss
    return loss


if __name__ == '__main__':
    cases = [
        [3, 2, 4, 2, 1, 5],  # -3
        [5, 3, 4, 2, 3, 1],  # -4
        [1, 2, 4, 4, 5],     # 0
        [3, 4, 7, 9, 10],    # 0
        [1000,],             # 0
        [30, 20, 100, 70, 150, 140],  # -30
    ]

    for x in cases:
        loss = get_biggest_loss(x)
        print(loss)
