.class Lelectrum2/drums/loadrumkits$3;
.super Ljava/lang/Object;
.source "loadrumkits.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/loadrumkits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/loadrumkits;


# direct methods
.method constructor <init>(Lelectrum2/drums/loadrumkits;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/loadrumkits$3;->this$0:Lelectrum2/drums/loadrumkits;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 217
    sget-object v1, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    .line 219
    .local v1, Test:Ljava/lang/String;
    move-object v3, v1

    .line 220
    .local v3, testend:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 223
    const-string v4, "drumkits"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, SlashPos:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, Test2:Ljava/lang/String;
    sput-object v2, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lelectrum2/drums/loadrumkits$3;->this$0:Lelectrum2/drums/loadrumkits;

    #calls: Lelectrum2/drums/loadrumkits;->ShowPatternFiles()V
    invoke-static {v4}, Lelectrum2/drums/loadrumkits;->access$0(Lelectrum2/drums/loadrumkits;)V

    .line 243
    .end local v0           #SlashPos:I
    .end local v2           #Test2:Ljava/lang/String;
    :cond_0
    return-void
.end method
