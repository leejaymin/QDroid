.class public interface abstract Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;
.super Ljava/lang/Object;
.source "OnPaymentChangedObserver.java"


# static fields
.field public static final FLAG_TOAST_SHOW:I = 0x10

.field public static final FLAG_UI_LEAVE:I = 0x1

.field public static final RESULT_ALREADY_PURCHASED:I = 0x1

.field public static final RESULT_INVALID_GAME_ITEM:I = 0x2

.field public static final RESULT_NO_PAYMENT_METHODS:I = 0x3

.field public static final RESULT_PAYMENT_BOOKED:I = -0x1

.field public static final RESULT_PAYMENT_CANCELED:I = 0x0

.field public static final RESULT_PAYMENT_FAILED:I = 0x4

.field public static final RESULT_PAYMENT_PENDING:I = 0x5


# virtual methods
.method public abstract onPaymentChanged(Lcom/scoreloop/client/android/core/model/GameItem;IZ)I
.end method
