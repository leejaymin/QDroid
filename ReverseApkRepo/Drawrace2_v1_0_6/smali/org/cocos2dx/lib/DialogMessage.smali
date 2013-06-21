.class Lorg/cocos2dx/lib/DialogMessage;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"


# instance fields
.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "message"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lorg/cocos2dx/lib/DialogMessage;->message:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lorg/cocos2dx/lib/DialogMessage;->title:Ljava/lang/String;

    .line 253
    return-void
.end method
