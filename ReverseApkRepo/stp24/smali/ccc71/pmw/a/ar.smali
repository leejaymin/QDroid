.class public final Lccc71/pmw/a/ar;
.super Lccc71/pmw/a/ad;
.source "SourceFile"


# static fields
.field public static b:Z

.field public static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, "/system/etc/init.d/99pmwautokill"

    sput-object v0, Lccc71/pmw/a/ar;->d:Ljava/lang/String;

    .line 17
    const-string v0, "/sys/module/lowmemorykiller/parameters/minfree"

    sput-object v0, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    .line 18
    const-string v0, "/sys/module/lowmemorykiller/parameters/adj"

    sput-object v0, Lccc71/pmw/a/ar;->f:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/a/ar;->g:[I

    .line 22
    sput-boolean v1, Lccc71/pmw/a/ar;->b:Z

    .line 23
    sput-boolean v1, Lccc71/pmw/a/ar;->c:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lccc71/pmw/a/ad;-><init>()V

    .line 44
    invoke-static {}, Lccc71/pmw/a/ar;->f()Z

    .line 45
    return-void
.end method

.method public static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 79
    sget-object v0, Lccc71/pmw/a/ar;->g:[I

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lccc71/pmw/a/ar;->h()[I

    .line 82
    :cond_0
    sget-object v0, Lccc71/pmw/a/ar;->g:[I

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lccc71/pmw/a/ar;->g:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 93
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0

    .line 86
    :cond_3
    sget-object v1, Lccc71/pmw/a/ar;->g:[I

    aget v1, v1, v0

    if-ge v1, p0, :cond_2

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Lccc71/pmw/a/ar;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    sget v0, Lccc71/pmw/lib/g;->ec:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    sget v0, Lccc71/pmw/lib/g;->ed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_2
    sget v0, Lccc71/pmw/lib/g;->ee:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_3
    sget v0, Lccc71/pmw/lib/g;->ef:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_4
    sget v0, Lccc71/pmw/lib/g;->eg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_5
    sget v0, Lccc71/pmw/lib/g;->eh:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Lccc71/pmw/a/ar;->b:Z

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/a/ar;->c:Z

    .line 39
    :cond_0
    :goto_0
    sget-boolean v0, Lccc71/pmw/a/ar;->c:Z

    return v0

    .line 36
    :cond_1
    const-string v0, "process_monitor_widget"

    const-string v1, "Auto kill NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    sget-boolean v0, Lccc71/pmw/a/ar;->c:Z

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    sget-object v2, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x32

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 124
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t read or parse minfree file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h()[I
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lccc71/pmw/a/ar;->g:[I

    if-nez v0, :cond_0

    .line 51
    sget-boolean v0, Lccc71/pmw/a/ar;->c:Z

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lccc71/pmw/a/ar;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 59
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    array-length v2, v1

    .line 61
    new-array v0, v2, [I

    sput-object v0, Lccc71/pmw/a/ar;->g:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 74
    :cond_0
    :goto_1
    sget-object v0, Lccc71/pmw/a/ar;->g:[I

    return-object v0

    .line 64
    :cond_1
    :try_start_1
    sget-object v3, Lccc71/pmw/a/ar;->g:[I

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t read or parse adj file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ar;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lccc71/pmw/a/ar;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    sget-object v1, Lccc71/pmw/a/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ar;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo \"0,1,2,4,7,15\" > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ar;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ar;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read source script: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method
