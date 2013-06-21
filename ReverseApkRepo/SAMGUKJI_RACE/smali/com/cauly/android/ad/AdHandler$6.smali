.class Lcom/cauly/android/ad/AdHandler$6;
.super Ljava/lang/Object;
.source "AdHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdHandler;->parse()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdHandler;

.field private final synthetic val$currentMessage:Lcom/cauly/android/ad/Message_Ads;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdHandler$6;->this$0:Lcom/cauly/android/ad/AdHandler;

    iput-object p2, p0, Lcom/cauly/android/ad/AdHandler$6;->val$currentMessage:Lcom/cauly/android/ad/Message_Ads;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cauly/android/ad/AdHandler$6;->val$currentMessage:Lcom/cauly/android/ad/Message_Ads;

    invoke-virtual {v0, p1}, Lcom/cauly/android/ad/Message_Ads;->setC_DESCRIPTION(Ljava/lang/String;)V

    .line 121
    return-void
.end method
