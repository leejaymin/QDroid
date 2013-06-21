.class Lelectrum2/drums/loadrumkits$1;
.super Ljava/lang/Object;
.source "loadrumkits.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/loadrumkits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/loadrumkits;


# direct methods
.method constructor <init>(Lelectrum2/drums/loadrumkits;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "adapterView"
    .parameter "view"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 68
    move-wide v2, p4

    .line 72
    .local v2, selectedPosition:J
    iget-object v5, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v4, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v4, v4, Lelectrum2/drums/loadrumkits;->filelist:Landroid/widget/ListView;

    long-to-int v6, v2

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    .line 77
    .local v0, IsFile:Z
    iget-object v4, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v5, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v5, v5, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/electrum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v5, v5, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, TestFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v5, v5, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lelectrum2/drums/globalSounds;->kitsfolder:Ljava/lang/String;

    .line 98
    iget-object v4, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    #calls: Lelectrum2/drums/loadrumkits;->ShowPatternFiles()V
    invoke-static {v4}, Lelectrum2/drums/loadrumkits;->access$0(Lelectrum2/drums/loadrumkits;)V

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 109
    iget-object v4, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v4, v4, Lelectrum2/drums/loadrumkits;->selectedname:Landroid/widget/TextView;

    iget-object v5, p0, Lelectrum2/drums/loadrumkits$1;->this$0:Lelectrum2/drums/loadrumkits;

    iget-object v5, v5, Lelectrum2/drums/loadrumkits;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_2
    return-void
.end method
