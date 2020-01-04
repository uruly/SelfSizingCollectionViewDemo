# SelfSizingCollectionViewDemo

![bugfix-self-sizing](https://user-images.githubusercontent.com/10204705/71759799-f75aa700-2ef5-11ea-8447-d3447cb84054.png)

## What?

UICollectionView contentSize will not work properly!:sob:

![self-sizing-collectionView](https://user-images.githubusercontent.com/10204705/71759871-6c7aac00-2ef7-11ea-93c2-fdf00eecc352.gif)

## Occurrence condition

- Use Self-sizing.
- Setting `minimumLineSpacing` and `minimumInteritemSpacing` to different value.
- UICollectionView `scrollDirection` is `horizontal`.

## Environment

- Xcode 11.3
- Swift 5.1
- iOS12.0 ~ iOS13.3

## How to bugfix

Setting `minimumLineSpacing` and `minimumInteritemSpacing` to equal value.


## Blog

ブログを書いたよ。
[【Swift】横スクロールの可変UICollectionViewCellを実装するときの注意点【Self-sizing】](https://uruly.xyz/self-sizing-collectionview/)
