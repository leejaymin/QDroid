.class final Lcom/rubycell/pianisthd/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/pianisthd/ui/h;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/OptionActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/OptionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ae;->a:Lcom/rubycell/pianisthd/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4019

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ae;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/OptionActivity;->ac:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ae;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->aa:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sput p1, Lcom/rubycell/pianisthd/d/b;->D:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/ae;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VOLUME_PERSENT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
