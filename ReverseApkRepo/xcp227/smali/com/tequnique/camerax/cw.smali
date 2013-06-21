.class final Lcom/tequnique/camerax/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cj;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cj;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iput-boolean p2, p0, Lcom/tequnique/camerax/cw;->b:Z

    iput-object p3, p0, Lcom/tequnique/camerax/cw;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/cw;->d:[I

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
    sput-object v0, Lcom/tequnique/camerax/cw;->d:[I

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
    .locals 2

    iget-boolean v0, p0, Lcom/tequnique/camerax/cw;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tequnique/camerax/cw;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    invoke-virtual {v1}, Lcom/tequnique/camerax/ch;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aM:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/cw;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aO:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
