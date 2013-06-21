.class public Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;
.super Ljava/lang/Exception;
.source "AESObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/utils/AESObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/robotmedia/billing/utils/AESObfuscator;


# direct methods
.method public constructor <init>(Lnet/robotmedia/billing/utils/AESObfuscator;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;->this$0:Lnet/robotmedia/billing/utils/AESObfuscator;

    .line 104
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 105
    return-void
.end method

.method public constructor <init>(Lnet/robotmedia/billing/utils/AESObfuscator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 107
    iput-object p1, p0, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;->this$0:Lnet/robotmedia/billing/utils/AESObfuscator;

    .line 108
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method
