.class Lelectrum2/drums/drumsample$1;
.super Ljava/lang/Object;
.source "drumsample.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsample;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 96
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget-object v1, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget-object v1, v1, Lelectrum2/drums/drumsample;->samplespinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lelectrum2/drums/drumsample;->selectedPosition:I

    .line 98
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget-boolean v0, v0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget v0, v0, Lelectrum2/drums/drumsample;->selectedPosition:I

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/electrum/samples"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    .line 115
    :goto_0
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    #calls: Lelectrum2/drums/drumsample;->ShowSampleFiles()V
    invoke-static {v0}, Lelectrum2/drums/drumsample;->access$0(Lelectrum2/drums/drumsample;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget-boolean v0, v0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    iget-object v0, v0, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lelectrum2/drums/drumsample$1;->this$0:Lelectrum2/drums/drumsample;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    .line 126
    return-void

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/electrum/exported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 128
    return-void
.end method
