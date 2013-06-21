.class Lelectrum2/drums/drumsettings$16;
.super Ljava/lang/Object;
.source "drumsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsettings$16;->this$0:Lelectrum2/drums/drumsettings;

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1009
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 1012
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v6, v6, Lelectrum2/drums/soundObj;->dofitbpm:Z

    if-eqz v6, :cond_0

    .line 1014
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v10, v6, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 1021
    :goto_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6}, Lelectrum2/drums/soundObj;->DoFitBpm()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1024
    iget-object v6, p0, Lelectrum2/drums/drumsettings$16;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v6, v6, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1026
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v10, v6, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 1029
    iget-object v6, p0, Lelectrum2/drums/drumsettings$16;->this$0:Lelectrum2/drums/drumsettings;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v7, v7, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1031
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1054
    .end local v5           #temptoast:Landroid/widget/Toast;
    :goto_1
    iget-object v6, p0, Lelectrum2/drums/drumsettings$16;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v6, v6, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    invoke-virtual {v6}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 1057
    return-void

    .line 1017
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v8, v6, Lelectrum2/drums/soundObj;->dofitbpm:Z

    goto :goto_0

    .line 1037
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 1038
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 1041
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1042
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 1045
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_2

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 1046
    :cond_2
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_3

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 1049
    :cond_3
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    goto :goto_1
.end method
