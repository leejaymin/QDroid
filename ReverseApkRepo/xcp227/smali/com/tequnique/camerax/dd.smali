.class final Lcom/tequnique/camerax/dd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cj;

.field private final synthetic b:J

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cj;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/dd;->a:Lcom/tequnique/camerax/cj;

    iput-wide p2, p0, Lcom/tequnique/camerax/dd;->b:J

    iput-wide p4, p0, Lcom/tequnique/camerax/dd;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-wide/16 v3, 0x400

    iget-object v0, p0, Lcom/tequnique/camerax/dd;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/dd;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-wide v1, p0, Lcom/tequnique/camerax/dd;->b:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/dd;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-wide v1, p0, Lcom/tequnique/camerax/dd;->c:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_0
    return-void
.end method
