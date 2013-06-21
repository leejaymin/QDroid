.class final Lcom/tequnique/camerax/cp;
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

    iput-object p1, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iput-boolean p2, p0, Lcom/tequnique/camerax/cp;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    return-object v0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/cp;->c:[I

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
    sput-object v0, Lcom/tequnique/camerax/cp;->c:[I

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
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tequnique/camerax/cp;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error while loading album list. Retry?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/tequnique/camerax/cq;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/cq;-><init>(Lcom/tequnique/camerax/cp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/tequnique/camerax/cr;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/cr;-><init>(Lcom/tequnique/camerax/cp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    sget-object v1, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    sget-object v3, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x2

    :cond_2
    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    sget-object v1, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    if-eq v0, v1, :cond_5

    const-string v0, "Default album"

    aput-object v0, v6, v2

    const/4 v0, 0x1

    const-string v1, "Add new album"

    aput-object v1, v6, v0

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    move v3, v2

    move v4, v2

    :goto_2
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Select an album"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tequnique/camerax/cs;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/cs;-><init>(Lcom/tequnique/camerax/cp;)V

    invoke-virtual {v0, v6, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/tequnique/camerax/cv;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/cv;-><init>(Lcom/tequnique/camerax/cp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    add-int v5, v3, v1

    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v5

    const-string v0, ""

    invoke-static {}, Lcom/tequnique/camerax/cp;->a()[I

    move-result-object v5

    iget-object v7, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v7, v7, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    invoke-virtual {v7}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    move-object v5, v0

    :goto_3
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int v4, v1, v3

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aM:Ljava/lang/String;

    move-object v5, v0

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aN:Ljava/lang/String;

    move-object v5, v0

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/cp;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aO:Ljava/lang/String;

    move-object v5, v0

    goto :goto_3

    :cond_5
    move v1, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
