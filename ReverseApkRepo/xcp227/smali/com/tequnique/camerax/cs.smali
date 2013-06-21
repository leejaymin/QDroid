.class final Lcom/tequnique/camerax/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cp;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/cs;->b:[I

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
    sput-object v0, Lcom/tequnique/camerax/cs;->b:[I

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
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    sget-object v1, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aN:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "New album name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v2}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Picture upload album"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter a new name for the album:"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/tequnique/camerax/ct;

    invoke-direct {v3, p0, v0}, Lcom/tequnique/camerax/ct;-><init>(Lcom/tequnique/camerax/cs;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/tequnique/camerax/cu;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/cu;-><init>(Lcom/tequnique/camerax/cs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const-string v0, ""

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v2}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/tequnique/camerax/cs;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v2}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    invoke-virtual {v2}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aM:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v2

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/a;->a()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p2, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/tequnique/camerax/a/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v2}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aO:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
