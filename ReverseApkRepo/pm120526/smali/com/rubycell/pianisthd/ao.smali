.class final Lcom/rubycell/pianisthd/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SettingActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SettingActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ao;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iput p2, p0, Lcom/rubycell/pianisthd/ao;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ao;->a:Lcom/rubycell/pianisthd/SettingActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/SettingActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rubycell/pianisthd/ao;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
