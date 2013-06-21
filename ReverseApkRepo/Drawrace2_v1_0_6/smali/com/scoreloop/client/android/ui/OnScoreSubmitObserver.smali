.class public interface abstract Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
.super Ljava/lang/Object;
.source "OnScoreSubmitObserver.java"


# static fields
.field public static final STATUS_ERROR_BALANCE:I = 0x5

.field public static final STATUS_ERROR_NETWORK:I = 0x4

.field public static final STATUS_SUCCESS_CHALLENGE:I = 0x3

.field public static final STATUS_SUCCESS_LOCAL_SCORE:I = 0x2

.field public static final STATUS_SUCCESS_SCORE:I = 0x1

.field public static final STATUS_UNDEFINED:I


# virtual methods
.method public abstract onScoreSubmit(ILjava/lang/Exception;)V
.end method
