.class interface abstract La/d/ax;
.super Ljava/lang/Object;


# static fields
.field public static final W:Ljava/net/InetAddress;

.field public static final X:I

.field public static final Y:I

.field public static final Z:I

.field public static final aa:I

.field public static final ab:Z

.field public static final ac:Z

.field public static final ad:Z

.field public static final ae:Z

.field public static final af:Z

.field public static final ag:Z

.field public static final ah:Ljava/lang/String;

.field public static final ai:I

.field public static final aj:I

.field public static final ak:Ljava/util/TimeZone;

.field public static final al:Z

.field public static final am:Ljava/lang/String;

.field public static final an:I

.field public static final ao:I

.field public static final ap:I

.field public static final aq:I

.field public static final ar:Z

.field public static final as:I

.field public static final at:Ljava/util/LinkedList;

.field public static final au:I

.field public static final av:I

.field public static final aw:I

.field public static final ax:Ljava/lang/String;

.field public static final ay:Ljava/lang/String;

.field public static final az:La/d/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const v9, 0x88b8

    const/4 v2, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, La/a;->a()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, La/d/ax;->W:Ljava/net/InetAddress;

    const-string v0, "jcifs.smb.client.lport"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->X:I

    const-string v0, "jcifs.smb.client.maxMpxCount"

    const/16 v3, 0xa

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->Y:I

    const-string v0, "jcifs.smb.client.snd_buf_size"

    const/16 v3, 0x4104

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->Z:I

    const-string v0, "jcifs.smb.client.rcv_buf_size"

    const v3, 0xec00

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->aa:I

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v7}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ab:Z

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ac:Z

    const-string v0, "jcifs.smb.client.useNtStatus"

    invoke-static {v0, v7}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ad:Z

    const-string v0, "jcifs.smb.client.signingPreferred"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ae:Z

    const-string v0, "jcifs.smb.client.useNTSmbs"

    invoke-static {v0, v7}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->af:Z

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    invoke-static {v0, v7}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ag:Z

    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v8}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/ax;->ah:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v3, 0x3

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->ai:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x40f0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    sput v0, La/d/ax;->aj:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, La/d/ax;->ak:Ljava/util/TimeZone;

    const-string v0, "jcifs.smb.client.useBatching"

    invoke-static {v0, v7}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->al:Z

    const-string v0, "jcifs.encoding"

    sget-object v3, La/a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/ax;->am:Ljava/lang/String;

    sget-boolean v0, La/d/ax;->ag:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x800

    :goto_0
    or-int/lit8 v3, v0, 0x3

    sget-boolean v0, La/d/ax;->ae:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    or-int/2addr v3, v0

    sget-boolean v0, La/d/ax;->ad:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4000

    :goto_2
    or-int/2addr v3, v0

    sget-boolean v0, La/d/ax;->ab:Z

    if-eqz v0, :cond_3

    const v0, 0x8000

    :goto_3
    or-int/2addr v0, v3

    sput v0, La/d/ax;->an:I

    sget-boolean v0, La/d/ax;->af:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    :goto_4
    sget-boolean v3, La/d/ax;->ad:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x40

    :goto_5
    or-int/2addr v0, v3

    sget-boolean v3, La/d/ax;->ab:Z

    if-eqz v3, :cond_6

    :goto_6
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x1000

    sput v0, La/d/ax;->ao:I

    const-string v0, "jcifs.smb.client.flags2"

    sget v2, La/d/ax;->an:I

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->ap:I

    const-string v0, "jcifs.smb.client.capabilities"

    sget v2, La/d/ax;->ao:I

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->aq:I

    const-string v0, "jcifs.smb.client.tcpNoDelay"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/ax;->ar:Z

    const-string v0, "jcifs.smb.client.responseTimeout"

    const/16 v2, 0x7530

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->as:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, La/d/ax;->at:Ljava/util/LinkedList;

    const-string v0, "jcifs.smb.client.ssnLimit"

    const/16 v2, 0xfa

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->au:I

    const-string v0, "jcifs.smb.client.soTimeout"

    invoke-static {v0, v9}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->av:I

    const-string v0, "jcifs.smb.client.connTimeout"

    invoke-static {v0, v9}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ax;->aw:I

    const-string v0, "jcifs.smb.client.nativeOs"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/ax;->ax:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.nativeLanMan"

    const-string v2, "jCIFS"

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/ax;->ay:Ljava/lang/String;

    new-instance v0, La/d/bg;

    invoke-direct {v0, v8, v1, v8, v1}, La/d/bg;-><init>(La/b;ILjava/net/InetAddress;I)V

    sput-object v0, La/d/ax;->az:La/d/bg;

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_4

    :cond_5
    move v3, v1

    goto/16 :goto_5

    :cond_6
    move v2, v1

    goto :goto_6
.end method
