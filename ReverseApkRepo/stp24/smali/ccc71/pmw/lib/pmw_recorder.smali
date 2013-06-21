.class public Lccc71/pmw/lib/pmw_recorder;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static C:Ljava/util/ArrayList;

.field private static a:Ljava/lang/Object;

.field private static b:Lccc71/pmw/lib/pmw_recorder;


# instance fields
.field private A:Ljava/util/HashMap;

.field private B:Ljava/util/HashMap;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lccc71/pmw/b/q;

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/util/Date;

.field private y:I

.field private z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    .line 93
    iput-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    .line 94
    iput-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->e:Landroid/app/PendingIntent;

    .line 95
    iput v2, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    .line 109
    iput-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->t:Lccc71/pmw/b/q;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->u:Z

    .line 115
    iput-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    .line 116
    iput v2, p0, Lccc71/pmw/lib/pmw_recorder;->y:I

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_recorder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(ILjava/lang/String;)Lccc71/pmw/b/t;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-static {p1}, Lccc71/pmw/lib/pmw_recorder;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 639
    if-nez v0, :cond_0

    .line 641
    new-instance v0, Lccc71/pmw/b/t;

    invoke-direct {v0}, Lccc71/pmw/b/t;-><init>()V

    .line 642
    iput p1, v0, Lccc71/pmw/b/t;->a:I

    .line 643
    iput-object p2, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 645
    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    iget v2, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 653
    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lccc71/pmw/b/t;

    invoke-direct {v0}, Lccc71/pmw/b/t;-><init>()V

    .line 656
    iput p1, v0, Lccc71/pmw/b/t;->a:I

    .line 657
    iput-object p2, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 659
    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    iget v2, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 932
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 933
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 934
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 935
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 937
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 938
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 940
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 944
    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->c(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    .line 946
    :catch_0
    move-exception v0

    .line 948
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load recording: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v0, "N/A"

    goto :goto_0
.end method

.method static a(Lccc71/pmw/b/q;ZZZ)Ljava/util/HashMap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 724
    :goto_0
    return-object v0

    .line 686
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 688
    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 690
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 688
    monitor-exit v2

    move-object v0, v1

    .line 724
    goto :goto_0

    .line 692
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 694
    sget-object v4, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v4, v4, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 696
    new-instance v4, Lccc71/pmw/b/p;

    invoke-direct {v4}, Lccc71/pmw/b/p;-><init>()V

    .line 697
    iget v5, v0, Lccc71/pmw/b/t;->a:I

    iput v5, v4, Lccc71/pmw/b/p;->a:I

    .line 698
    invoke-virtual {p0, v4}, Lccc71/pmw/b/q;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 700
    iget-object v4, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-static {v4}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_1

    .line 704
    :cond_3
    iget v4, v0, Lccc71/pmw/b/t;->a:I

    invoke-virtual {p0, v4}, Lccc71/pmw/b/q;->b(I)Lccc71/pmw/b/p;

    move-result-object v4

    .line 707
    if-eqz v4, :cond_5

    .line 709
    invoke-static {v4}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_1

    .line 711
    :cond_4
    invoke-static {v4}, Lccc71/pmw/b/q;->f(Lccc71/pmw/b/p;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p3, :cond_1

    .line 715
    :cond_5
    iget v4, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private a(Ljava/util/HashMap;Z)Ljava/util/HashMap;
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, -0xffff01

    const/4 v4, 0x0

    .line 1055
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1056
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Copying "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recording sets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v6, Lccc71/pmw/b/t;

    invoke-direct {v6}, Lccc71/pmw/b/t;-><init>()V

    .line 1059
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->dw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1063
    :goto_0
    iput v4, v6, Lccc71/pmw/b/t;->a:I

    .line 1065
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1130
    if-eqz p2, :cond_1

    .line 1132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1000

    add-int/2addr v0, v12

    iput v0, v6, Lccc71/pmw/b/t;->b:I

    .line 1136
    :cond_1
    return-object v5

    .line 1062
    :cond_2
    const-string v0, "CPU"

    iput-object v0, v6, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    goto :goto_0

    .line 1067
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1068
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 1072
    const/4 v2, 0x0

    .line 1073
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v2

    .line 1084
    :goto_2
    if-nez v1, :cond_d

    .line 1086
    new-instance v1, Lccc71/pmw/b/t;

    invoke-direct {v1}, Lccc71/pmw/b/t;-><init>()V

    .line 1087
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1000

    add-int/2addr v2, v12

    iput v2, v1, Lccc71/pmw/b/t;->b:I

    .line 1088
    iget-object v2, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    iput-object v2, v1, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1089
    iget v2, v0, Lccc71/pmw/b/t;->a:I

    iput v2, v1, Lccc71/pmw/b/t;->a:I

    move-object v2, v1

    .line 1091
    :goto_3
    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v4

    .line 1092
    :goto_4
    if-lt v3, v8, :cond_6

    .line 1127
    iget v0, v2, Lccc71/pmw/b/t;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    iget v0, v2, Lccc71/pmw/b/t;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1075
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1076
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    .line 1077
    iget-object v8, v1, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    iget-object v9, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 1094
    :cond_6
    iget v1, v0, Lccc71/pmw/b/t;->a:I

    const/16 v9, -0x40

    if-ne v1, v9, :cond_a

    iget v9, p0, Lccc71/pmw/lib/pmw_recorder;->y:I

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v9, v1}, Lccc71/pmw/lib/pmw_settings;->c(IF)F

    move-result v1

    const/high16 v9, 0x4120

    mul-float/2addr v1, v9

    :goto_5
    float-to-int v9, v1

    .line 1095
    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_b

    .line 1097
    iget-object v10, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    iget-object v1, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 1099
    iget-object v10, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_7
    :goto_6
    iget v1, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v1, v9

    iput v1, v2, Lccc71/pmw/b/t;->d:I

    .line 1109
    iget v1, v0, Lccc71/pmw/b/t;->a:I

    if-lez v1, :cond_9

    .line 1111
    iget-object v1, v6, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    .line 1113
    iget-object v10, v6, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget-object v1, v6, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    iget-object v1, v6, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    .line 1115
    iget-object v10, v6, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v6, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :cond_8
    :goto_7
    iget v1, v6, Lccc71/pmw/b/t;->d:I

    add-int/2addr v1, v9

    iput v1, v6, Lccc71/pmw/b/t;->d:I

    .line 1092
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_4

    .line 1094
    :cond_a
    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    goto/16 :goto_5

    .line 1103
    :cond_b
    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 1105
    iget-object v10, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1119
    :cond_c
    iget-object v1, v6, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1120
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    .line 1121
    iget-object v10, v6, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_d
    move-object v2, v1

    goto/16 :goto_3
.end method

.method static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 147
    sget-object v7, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 149
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-nez v0, :cond_7

    .line 151
    const-string v0, "process_monitor_widget"

    const-string v1, "Registering pmw_recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    .line 154
    sput-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iput-object p0, v0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lccc71/pmw/lib/pmw_recorder;->e:Landroid/app/PendingIntent;

    .line 157
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    .line 159
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/pmw/lib/pmw_recorder;->f:I

    .line 160
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/pmw/lib/pmw_recorder;->g:I

    .line 161
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ag(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->i:Z

    .line 162
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ah(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->j:Z

    .line 164
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->an(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->s:Z

    .line 166
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ak(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->k:Z

    .line 167
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->k:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lccc71/utils/phone/a/h;

    const-string v1, "Screen"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->al(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->l:Z

    .line 174
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->l:Z

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Lccc71/utils/phone/a/j;

    const-string v1, "WiFi"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ao(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->m:Z

    .line 181
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->m:Z

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Lccc71/utils/phone/a/a;

    const-string v1, "BT"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->am(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->n:Z

    .line 189
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aq(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->p:Z

    .line 190
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->p:Z

    if-eqz v0, :cond_3

    .line 192
    new-instance v0, Lccc71/utils/phone/a/e;

    const-string v1, "Signal"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_3
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ai(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->r:Z

    .line 198
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ar(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->q:Z

    .line 199
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->q:Z

    if-eqz v0, :cond_4

    .line 201
    new-instance v0, Lccc71/utils/phone/a/d;

    const-string v1, "On-Call"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_4
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ap(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->o:Z

    .line 206
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->o:Z

    if-eqz v0, :cond_5

    .line 208
    new-instance v0, Lccc71/utils/phone/a/b;

    const-string v1, "GPS"

    invoke-direct {v0, p0, v1}, Lccc71/utils/phone/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_5
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aj(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_recorder;->h:Z

    .line 214
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    new-instance v1, Lccc71/pmw/b/q;

    invoke-direct {v1, p0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lccc71/pmw/lib/pmw_recorder;->t:Lccc71/pmw/b/q;

    .line 215
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_recorder;->h:Z

    if-eqz v0, :cond_6

    .line 216
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->t:Lccc71/pmw/b/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/b/q;->a(ZZ)V

    .line 220
    :goto_0
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording precisely every "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v2, v2, Lccc71/pmw/lib/pmw_recorder;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds and for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v2, v2, Lccc71/pmw/lib/pmw_recorder;->g:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v1, v1, Lccc71/pmw/lib/pmw_recorder;->g:I

    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v2, v2, Lccc71/pmw/lib/pmw_recorder;->f:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lccc71/pmw/lib/pmw_recorder;->g:I

    .line 225
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v1, v0, Lccc71/pmw/lib/pmw_recorder;->f:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lccc71/pmw/lib/pmw_recorder;->f:I

    .line 227
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    .line 229
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v4, v4, Lccc71/pmw/lib/pmw_recorder;->f:I

    int-to-long v4, v4

    sget-object v6, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v6, v6, Lccc71/pmw/lib/pmw_recorder;->e:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 233
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;->d(Landroid/content/Context;)V

    .line 234
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 147
    :goto_1
    monitor-exit v7

    return-void

    .line 218
    :cond_6
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->t:Lccc71/pmw/b/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccc71/pmw/b/q;->a(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 238
    :cond_7
    :try_start_1
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_recorder already registered, not registering again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lccc71/pmw/b/q;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 523
    sget-object v4, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_4

    sget-object v5, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    new-instance v6, Lccc71/pmw/a/ah;

    invoke-direct {v6}, Lccc71/pmw/a/ah;-><init>()V

    iget-boolean v0, v5, Lccc71/pmw/lib/pmw_recorder;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lccc71/pmw/a/ah;->b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    const/16 v0, -0x10

    const-string v1, "Frequency"

    invoke-direct {v5, v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(ILjava/lang/String;)Lccc71/pmw/b/t;

    move-result-object v0

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lccc71/pmw/a/ah;->g(I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, v5, Lccc71/pmw/lib/pmw_recorder;->j:Z

    if-eqz v0, :cond_2

    const/16 v0, -0x40

    const-string v1, "Temperature"

    invoke-direct {v5, v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(ILjava/lang/String;)Lccc71/pmw/b/t;

    move-result-object v0

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lccc71/pmw/a/ah;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, v5, Lccc71/pmw/lib/pmw_recorder;->n:Z

    if-eqz v0, :cond_3

    const/16 v0, -0x86

    const-string v1, "Data"

    invoke-direct {v5, v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(ILjava/lang/String;)Lccc71/pmw/b/t;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget-object v1, v5, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-static {v1}, Lccc71/pmw/b/n;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_2
    if-lt v1, v3, :cond_b

    :cond_4
    monitor-exit v4

    return-void

    :cond_5
    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_0

    rsub-int/lit8 v3, v0, -0x10

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Frequency"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lccc71/pmw/lib/pmw_recorder;->a(ILjava/lang/String;)Lccc71/pmw/b/t;

    move-result-object v3

    iget-object v7, v3, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lccc71/pmw/a/ah;->g(I)I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget v3, v0, Lccc71/pmw/b/t;->a:I

    if-ltz v3, :cond_1

    new-instance v3, Lccc71/pmw/b/p;

    invoke-direct {v3}, Lccc71/pmw/b/p;-><init>()V

    iget v7, v0, Lccc71/pmw/b/t;->a:I

    iput v7, v3, Lccc71/pmw/b/p;->a:I

    invoke-virtual {p0, v3}, Lccc71/pmw/b/q;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_7
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    iget-object v1, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    iget v3, v0, Lccc71/pmw/b/p;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    if-nez v1, :cond_9

    new-instance v3, Lccc71/pmw/b/t;

    invoke-direct {v3}, Lccc71/pmw/b/t;-><init>()V

    iget-object v1, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v1, v1, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    move v1, v2

    :goto_4
    if-lt v1, v8, :cond_a

    :cond_8
    iget v1, v0, Lccc71/pmw/b/p;->a:I

    iput v1, v3, Lccc71/pmw/b/t;->a:I

    iget-object v1, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iput-object v1, v3, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    const v1, -0xffff01

    iget-object v8, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit16 v8, v8, 0x1000

    add-int/2addr v1, v8

    iput v1, v3, Lccc71/pmw/b/t;->b:I

    iget-object v1, v5, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    iget v8, v3, Lccc71/pmw/b/t;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_9
    iget-object v3, v1, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget-wide v8, v0, Lccc71/pmw/b/p;->p:J

    long-to-int v8, v8

    div-int/lit8 v8, v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget v0, v0, Lccc71/pmw/b/p;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v9, v3, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v3, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/phone/a/i;

    iget v2, v0, Lccc71/utils/phone/a/i;->b:I

    iget-object v6, v0, Lccc71/utils/phone/a/i;->c:Ljava/lang/String;

    invoke-direct {v5, v2, v6}, Lccc71/pmw/lib/pmw_recorder;->a(ILjava/lang/String;)Lccc71/pmw/b/t;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccc71/utils/phone/a/i;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_recorder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lccc71/pmw/lib/pmw_recorder;->g:I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_recorder;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_recorder;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/util/HashMap;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    return-void

    .line 355
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 357
    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_2

    .line 359
    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 360
    add-int/lit8 v1, p2, 0x1

    move v3, v1

    :goto_0
    if-lt v3, v5, :cond_4

    :cond_2
    move v3, v2

    .line 365
    :goto_1
    if-lt v3, p1, :cond_5

    .line 370
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    .line 372
    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 373
    add-int/lit8 v1, p2, 0x1

    :goto_2
    if-lt v1, v3, :cond_6

    :cond_3
    move v1, v2

    .line 379
    :goto_3
    if-ge v1, p1, :cond_0

    iget-object v3, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 381
    iget-object v3, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 362
    :cond_4
    iget v6, v0, Lccc71/pmw/b/t;->d:I

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v6, v1

    iput v1, v0, Lccc71/pmw/b/t;->d:I

    .line 360
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 367
    :cond_5
    iget v5, v0, Lccc71/pmw/b/t;->d:I

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v5, v1

    iput v1, v0, Lccc71/pmw/b/t;->d:I

    .line 365
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 375
    :cond_6
    iget-object v5, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    const/16 v0, -0x80

    if-gt p0, v0, :cond_0

    const/16 v0, -0x100

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_recorder;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    return v0
.end method

.method static b(I)Lccc71/pmw/b/t;
    .locals 3
    .parameter

    .prologue
    .line 729
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :goto_0
    return-object v0

    .line 729
    :cond_0
    monitor-exit v1

    .line 734
    const/4 v0, 0x0

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    return-object v0

    .line 133
    :cond_0
    monitor-exit v1

    .line 142
    const-string v0, ""

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_recorder;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_recorder;)I
    .locals 1
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lccc71/pmw/lib/pmw_recorder;->g:I

    return v0
.end method

.method static d()V
    .locals 5

    .prologue
    .line 293
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_recorder;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 299
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_recorder;->e:Landroid/app/PendingIntent;

    .line 300
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_recorder;->d:Landroid/app/AlarmManager;

    .line 302
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    .line 303
    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    .line 304
    const/4 v3, 0x0

    sput-object v3, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    .line 306
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 310
    new-instance v3, Lccc71/pmw/lib/ks;

    invoke-direct {v3, v2, v0}, Lccc71/pmw/lib/ks;-><init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 334
    invoke-virtual {v3, v0}, Lccc71/pmw/lib/ks;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 293
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 338
    :cond_2
    invoke-direct {v2}, Lccc71/pmw/lib/pmw_recorder;->n()V

    .line 342
    invoke-static {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;->d(Landroid/content/Context;)V

    .line 343
    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 345
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered pmw_recorder"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_recorder;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_recorder;->n()V

    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_recorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->h:Z

    return v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_recorder;)Lccc71/pmw/b/q;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->t:Lccc71/pmw/b/q;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_recorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->r:Z

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_recorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->s:Z

    return v0
.end method

.method static synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m()Lccc71/pmw/lib/pmw_recorder;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Z)V

    .line 276
    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    monitor-enter v2

    .line 278
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 279
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 283
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    .line 289
    return-void

    .line 281
    :cond_0
    :try_start_1
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/phone/a/i;

    iget-object v4, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lccc71/utils/phone/a/i;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/util/HashMap;II)V

    .line 389
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/util/HashMap;II)V

    .line 390
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/util/HashMap;II)V

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 394
    const/16 v1, 0xd

    add-int/lit8 v2, p1, -0x1

    iget v3, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 396
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    .line 397
    sub-int v0, p2, p1

    iget v1, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    mul-int/2addr v0, v1

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    .line 399
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New recording start:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New recording length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    .line 1142
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->y:I

    .line 1145
    :try_start_0
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading recording file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1148
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    .line 1151
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2000

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1152
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1153
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1155
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1157
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1158
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    .line 1162
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording refresh rate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v5, Lccc71/pmw/b/t;

    invoke-direct {v5}, Lccc71/pmw/b/t;-><init>()V

    .line 1166
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->dw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1171
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->u:Z

    .line 1172
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1254
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const v0, -0xffff01

    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1000

    add-int/2addr v0, v1

    iput v0, v5, Lccc71/pmw/b/t;->b:I

    .line 1257
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1263
    :goto_2
    return-void

    .line 1169
    :cond_1
    const-string v0, "CPU"

    iput-object v0, v5, Lccc71/pmw/b/t;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1261
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load recording: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1174
    :cond_2
    :try_start_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1175
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 1176
    const v0, -0xffff01

    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1000

    add-int/2addr v0, v1

    iput v0, v2, Lccc71/pmw/b/t;->b:I

    .line 1177
    const/4 v0, 0x0

    aget-object v0, v6, v0

    iput-object v0, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1178
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lccc71/pmw/b/t;->a:I

    .line 1180
    array-length v7, v6

    .line 1181
    const/4 v0, 0x3

    move v3, v0

    :goto_3
    if-lt v3, v7, :cond_5

    .line 1221
    iget v0, v2, Lccc71/pmw/b/t;->a:I

    if-lez v0, :cond_4

    .line 1223
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    move-object v1, v2

    .line 1243
    :goto_4
    if-eqz v1, :cond_0

    .line 1245
    iget v0, v1, Lccc71/pmw/b/t;->a:I

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1246
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    iget v2, v1, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1183
    :cond_5
    aget-object v0, v6, v3

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1184
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1185
    array-length v0, v8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 1186
    :goto_5
    array-length v0, v8

    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->u:Z

    .line 1189
    :cond_6
    iget v0, v2, Lccc71/pmw/b/t;->a:I

    const/16 v8, -0x40

    if-ne v0, v8, :cond_9

    .line 1193
    iget v0, p0, Lccc71/pmw/lib/pmw_recorder;->y:I

    int-to-float v8, v9

    invoke-static {v0, v8}, Lccc71/pmw/lib/pmw_settings;->c(IF)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    .line 1195
    iget v8, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v8, v0

    iput v8, v2, Lccc71/pmw/b/t;->d:I

    .line 1196
    iget-object v8, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :goto_6
    iget v0, v2, Lccc71/pmw/b/t;->a:I

    if-lez v0, :cond_7

    .line 1207
    iget-object v0, v5, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v3, -0x3

    if-le v0, v8, :cond_a

    .line 1209
    iget-object v8, v5, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x3

    iget-object v0, v5, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v8, v5, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x3

    iget-object v0, v5, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1217
    :goto_7
    iget v0, v5, Lccc71/pmw/b/t;->d:I

    add-int/2addr v0, v9

    iput v0, v5, Lccc71/pmw/b/t;->d:I

    .line 1181
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 1185
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 1200
    :cond_9
    iget v0, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v0, v9

    iput v0, v2, Lccc71/pmw/b/t;->d:I

    .line 1201
    iget-object v0, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    iget-object v0, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1214
    :cond_a
    iget-object v0, v5, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, v5, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1225
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 1226
    iget-object v3, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1227
    iget-object v3, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1228
    iget-object v3, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    iget-object v8, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1230
    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v6, :cond_c

    if-lt v3, v7, :cond_d

    .line 1235
    :cond_c
    iget v1, v0, Lccc71/pmw/b/t;->d:I

    iget v2, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lccc71/pmw/b/t;->d:I

    .line 1237
    const/4 v0, 0x0

    move-object v1, v0

    .line 1238
    goto/16 :goto_4

    .line 1232
    :cond_d
    iget-object v8, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object v8, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v2, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1230
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 1247
    :cond_e
    iget v0, v1, Lccc71/pmw/b/t;->a:I

    const/16 v2, -0x100

    if-gt v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    .line 1248
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    iget v2, v1, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1247
    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    .line 1250
    :cond_10
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    iget v2, v1, Lccc71/pmw/b/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting battery history from BMW Pro ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EXPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ccc71.bmw.pro"

    const-string v3, "ccc71.bmw.pro.bmw_exporter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 506
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v1, "schedule"

    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ccc71.bmw.pro.tf"

    const-string v3, "ccc71.bmw.pro.tf.bmw_exporter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 519
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BMW Pro (TF) not installed, you should disable battery history import: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    const/4 v8, 0x0

    .line 750
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 752
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "No states or no processes to save!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 764
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v1

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 772
    const/4 v0, 0x2

    if-lt v6, v0, :cond_1

    if-eq v6, v2, :cond_1

    .line 778
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 779
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 782
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 784
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 786
    :cond_6
    if-eqz p2, :cond_1

    .line 788
    new-instance v1, Lccc71/pmw/lib/ku;

    invoke-direct {v1, p0, p2, p1, v0}, Lccc71/pmw/lib/ku;-><init>(Lccc71/pmw/lib/pmw_recorder;ZLandroid/content/Context;Ljava/lang/String;)V

    new-array v0, v8, [Ljava/lang/Void;

    .line 810
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/ku;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_0

    .line 760
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 761
    iget-object v4, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v1, :cond_3

    .line 762
    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 766
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 767
    iget-object v1, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v6, :cond_4

    .line 768
    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    .line 817
    :cond_9
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 821
    :try_start_0
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving recording to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v1, 0x2000

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 824
    const-string v0, "System Tuner (data multiple of 10ms)\r\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 825
    const-string v0, "====================================\r\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refresh Rate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 829
    add-int/lit8 v0, v6, -0x1

    iget v1, p0, Lccc71/pmw/lib/pmw_recorder;->f:I

    mul-int/2addr v0, v1

    int-to-long v4, v0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total Recording: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, 0xa

    div-long v9, v4, v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 843
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 854
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 856
    new-instance v0, Lccc71/pmw/lib/kv;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lccc71/pmw/lib/kv;-><init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;Ljava/lang/String;JIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 881
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/kv;->c([Ljava/lang/Object;)Lccc71/utils/android/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 885
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to store recording to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v0, Lccc71/pmw/lib/kw;

    invoke-direct {v0, p0, p2, p1, v3}, Lccc71/pmw/lib/kw;-><init>(Lccc71/pmw/lib/pmw_recorder;ZLandroid/content/Context;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 909
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/kw;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 834
    :cond_a
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v9, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v0, Lccc71/pmw/b/t;->a:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " :"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v1, v8

    .line 837
    :goto_5
    if-lt v1, v6, :cond_b

    .line 841
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 839
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lccc71/pmw/b/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 845
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v9, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v0, Lccc71/pmw/b/t;->a:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " :"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v1, v8

    .line 848
    :goto_6
    if-lt v1, v6, :cond_d

    .line 852
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 850
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method final a([I[I[I[I[I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, -0x88

    const/16 v7, -0x100

    const/16 v6, -0x101

    const/16 v5, -0x102

    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 989
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 990
    const-string v0, "%"

    iput-object v0, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 991
    iput v7, v2, Lccc71/pmw/b/t;->a:I

    move v0, v1

    .line 992
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 999
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 1002
    const-string v0, "mA"

    iput-object v0, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1003
    iput v6, v2, Lccc71/pmw/b/t;->a:I

    move v0, v1

    .line 1004
    :goto_1
    array-length v3, p2

    if-lt v0, v3, :cond_2

    .line 1011
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 1014
    const-string v0, "Temperature"

    iput-object v0, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1015
    iput v5, v2, Lccc71/pmw/b/t;->a:I

    move v0, v1

    .line 1016
    :goto_2
    array-length v3, p3

    if-lt v0, v3, :cond_3

    .line 1023
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v2, Lccc71/pmw/b/t;

    invoke-direct {v2}, Lccc71/pmw/b/t;-><init>()V

    .line 1026
    const-string v0, "Plugged"

    iput-object v0, v2, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1027
    const/16 v0, -0x87

    iput v0, v2, Lccc71/pmw/b/t;->a:I

    move v0, v1

    .line 1028
    :goto_3
    array-length v3, p4

    if-lt v0, v3, :cond_4

    .line 1035
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    const/16 v3, -0x87

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    if-eqz p5, :cond_0

    .line 1039
    new-instance v0, Lccc71/pmw/b/t;

    invoke-direct {v0}, Lccc71/pmw/b/t;-><init>()V

    .line 1040
    const-string v2, "Screen"

    iput-object v2, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    .line 1041
    iput v8, v0, Lccc71/pmw/b/t;->a:I

    .line 1042
    :goto_4
    array-length v2, p5

    if-lt v1, v2, :cond_5

    .line 1049
    iget-object v1, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_0
    return-void

    .line 994
    :cond_1
    aget v3, p1, v0

    .line 995
    iget v4, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lccc71/pmw/b/t;->d:I

    .line 996
    iget-object v4, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_2
    aget v3, p2, v0

    .line 1007
    iget v4, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lccc71/pmw/b/t;->d:I

    .line 1008
    iget-object v4, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    :cond_3
    aget v3, p3, v0

    .line 1019
    iget v4, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lccc71/pmw/b/t;->d:I

    .line 1020
    iget-object v4, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1030
    :cond_4
    aget v3, p4, v0

    .line 1031
    iget v4, v2, Lccc71/pmw/b/t;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lccc71/pmw/b/t;->d:I

    .line 1032
    iget-object v4, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1044
    :cond_5
    aget v2, p5, v1

    .line 1045
    iget v3, v0, Lccc71/pmw/b/t;->d:I

    add-int/2addr v3, v2

    iput v3, v0, Lccc71/pmw/b/t;->d:I

    .line 1046
    iget-object v3, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 961
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-eqz v0, :cond_0

    .line 965
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->y:I

    .line 967
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    .line 968
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    .line 969
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    .line 970
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recording start time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recording refresh rate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    .line 974
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    .line 976
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    iget v2, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    mul-int/2addr v2, v0

    iput v2, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    .line 979
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->an(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 980
    sget-object v2, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    const/4 v3, 0x0

    iget v4, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    invoke-virtual {v2, p1, v3, v4, v0}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 961
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lccc71/pmw/lib/kr;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kr;-><init>(Lccc71/pmw/lib/pmw_recorder;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method final e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method final f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->z:Ljava/util/HashMap;

    return-object v0
.end method

.method final g()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->B:Ljava/util/HashMap;

    return-object v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lccc71/pmw/lib/pmw_recorder;->v:I

    return v0
.end method

.method final i()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lccc71/pmw/lib/pmw_recorder;->w:I

    return v0
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_recorder;->u:Z

    return v0
.end method

.method final k()Ljava/util/Date;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lccc71/pmw/lib/pmw_recorder;->x:Ljava/util/Date;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "process_monitor_widget"

    const-string v1, "PMW Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 411
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_recorder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    if-nez v0, :cond_1

    .line 415
    const-string v0, "process_monitor_widget"

    const-string v2, "Recorder service not running - attempting to restart..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {p1}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    .line 417
    monitor-exit v1

    :goto_0
    return-void

    .line 421
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_recorder;->b:Lccc71/pmw/lib/pmw_recorder;

    iget v2, v0, Lccc71/pmw/lib/pmw_recorder;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lccc71/pmw/lib/pmw_recorder;->g:I

    .line 423
    new-instance v0, Lccc71/pmw/lib/kt;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/kt;-><init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 493
    invoke-virtual {v0, v2}, Lccc71/pmw/lib/kt;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
