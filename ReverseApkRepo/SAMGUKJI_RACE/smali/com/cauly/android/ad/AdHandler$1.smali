.class Lcom/cauly/android/ad/AdHandler$1;
.super Ljava/lang/Object;
.source "AdHandler.java"

# interfaces
.implements Landroid/sax/EndElementListener;


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

.field private final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdHandler;Ljava/util/List;Lcom/cauly/android/ad/Message_Ads;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdHandler$1;->this$0:Lcom/cauly/android/ad/AdHandler;

    iput-object p2, p0, Lcom/cauly/android/ad/AdHandler$1;->val$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/cauly/android/ad/AdHandler$1;->val$currentMessage:Lcom/cauly/android/ad/Message_Ads;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cauly/android/ad/AdHandler$1;->val$messages:Ljava/util/List;

    iget-object v1, p0, Lcom/cauly/android/ad/AdHandler$1;->val$currentMessage:Lcom/cauly/android/ad/Message_Ads;

    invoke-virtual {v1}, Lcom/cauly/android/ad/Message_Ads;->copy()Lcom/cauly/android/ad/Message_Ads;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method