.class final Lcom/tequnique/camerax/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic c:[I


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cj;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cj;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iput-boolean p2, p0, Lcom/tequnique/camerax/ck;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    return-object v0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/ck;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tequnique/camerax/ch;->values()[Lcom/tequnique/camerax/ch;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tequnique/camerax/ch;->a:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tequnique/camerax/ch;->c:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tequnique/camerax/ch;->d:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/tequnique/camerax/ck;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tequnique/camerax/ck;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Authentication failed. Try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/tequnique/camerax/cl;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/cl;-><init>(Lcom/tequnique/camerax/ck;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/tequnique/camerax/cm;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/cm;-><init>(Lcom/tequnique/camerax/ck;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tequnique/camerax/ck;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "Posted with campro, http://s.meh.at/campro"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Picture upload"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter a message you want to post with the picture."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/tequnique/camerax/cn;

    invoke-direct {v3, p0, v0}, Lcom/tequnique/camerax/cn;-><init>(Lcom/tequnique/camerax/ck;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/tequnique/camerax/co;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/co;-><init>(Lcom/tequnique/camerax/ck;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/d;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aG:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/e;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aK:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/e;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/e;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aL:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/i;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/i;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aJ:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/k;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/k;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aH:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/ck;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/a/k;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/k;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aI:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
