.class Lelectrum2/drums/drumsettings$15;
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
    iput-object p1, p0, Lelectrum2/drums/drumsettings$15;->this$0:Lelectrum2/drums/drumsettings;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x0

    .line 948
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v7, Lelectrum2/drums/soundObj;->pitch:I

    .line 949
    .local v0, CurrentPitch:I
    const/16 v7, 0x16

    if-ge v0, v7, :cond_2

    .line 952
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput-boolean v11, v7, Lelectrum2/drums/soundObj;->dofitbpm:Z

    .line 955
    iget-object v7, p0, Lelectrum2/drums/drumsettings$15;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v7, v7, Lelectrum2/drums/drumsettings;->bpmbutton:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 957
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v3, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 959
    .local v3, oldsamplefulllen:I
    add-int/lit8 v0, v0, 0x1

    .line 960
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v7, v0}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 963
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v0, v7, Lelectrum2/drums/soundObj;->pitch:I

    .line 968
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v7, v7

    int-to-double v9, v3

    div-double v1, v7, v9

    .line 969
    .local v1, endpointdiff:D
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v7, v7

    int-to-double v9, v3

    div-double v4, v7, v9

    .line 972
    .local v4, startposdiff:D
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v8, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v8, v8, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v8, v8

    mul-double/2addr v8, v1

    double-to-int v8, v8

    iput v8, v7, Lelectrum2/drums/soundObj;->samplelen:I

    .line 973
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v8, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v8, v8, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v8, v8

    mul-double/2addr v8, v4

    double-to-int v8, v8

    iput v8, v7, Lelectrum2/drums/soundObj;->startpos:I

    .line 976
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v8, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v8, v8, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v7, v8, :cond_0

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v8, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v8, v8, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v8, v7, Lelectrum2/drums/soundObj;->samplelen:I

    .line 977
    :cond_0
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v7, :cond_1

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v11, v7, Lelectrum2/drums/soundObj;->startpos:I

    .line 980
    :cond_1
    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v7, v11}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    .line 993
    .end local v1           #endpointdiff:D
    .end local v4           #startposdiff:D
    :goto_0
    iget-object v7, p0, Lelectrum2/drums/drumsettings$15;->this$0:Lelectrum2/drums/drumsettings;

    iget-object v7, v7, Lelectrum2/drums/drumsettings;->wave:Lelectrum2/drums/wavedisplay;

    invoke-virtual {v7}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 997
    .end local v3           #oldsamplefulllen:I
    :cond_2
    return-void

    .line 985
    .restart local v3       #oldsamplefulllen:I
    :cond_3
    iget-object v7, p0, Lelectrum2/drums/drumsettings$15;->this$0:Lelectrum2/drums/drumsettings;

    sget-object v8, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v8, v8, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 989
    .local v6, temptoast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method