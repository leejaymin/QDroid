.class final Lcom/rubycell/pianisthd/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/pianisthd/ui/g;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/OptionActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/OptionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ad;->a:Lcom/rubycell/pianisthd/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/ad;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->Z:Lcom/rubycell/pianisthd/ui/SeekBarVibration;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->setPersent(I)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ad;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sput p1, Lcom/rubycell/pianisthd/d/b;->y:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/ad;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PLAY_SPEED"

    sget v2, Lcom/rubycell/pianisthd/d/b;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
