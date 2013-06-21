.class Lelectrum2/drums/loadexported$3;
.super Ljava/lang/Object;
.source "loadexported.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/loadexported;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/loadexported;


# direct methods
.method constructor <init>(Lelectrum2/drums/loadexported;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/loadexported$3;->this$0:Lelectrum2/drums/loadexported;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 200
    iget-object v4, p0, Lelectrum2/drums/loadexported$3;->this$0:Lelectrum2/drums/loadexported;

    iget-object v1, v4, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    .line 202
    .local v1, Test:Ljava/lang/String;
    move-object v3, v1

    .line 203
    .local v3, testend:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 206
    sget-object v4, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, SlashPos:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, Test2:Ljava/lang/String;
    iget-object v4, p0, Lelectrum2/drums/loadexported$3;->this$0:Lelectrum2/drums/loadexported;

    iput-object v2, v4, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lelectrum2/drums/loadexported$3;->this$0:Lelectrum2/drums/loadexported;

    #calls: Lelectrum2/drums/loadexported;->ShowPatternFiles()V
    invoke-static {v4}, Lelectrum2/drums/loadexported;->access$0(Lelectrum2/drums/loadexported;)V

    .line 226
    .end local v0           #SlashPos:I
    .end local v2           #Test2:Ljava/lang/String;
    :cond_0
    return-void
.end method
