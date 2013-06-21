.class public final LjQaa7YP/GLtqH7G;
.super Ljava/lang/Object;
.source "JUST_GIVE_IT_UP"


# static fields
.field private static final iyDGJPeog:I

.field protected static iyDGJPeog:Landroid/content/Context;

.field private static final wmyXqoIieE9odgvBu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LjQaa7YP/GLtqH7G;->iyDGJPeog:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LjQaa7YP/GLtqH7G;->iyDGJPeog:I

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LjQaa7YP/GLtqH7G;->wmyXqoIieE9odgvBu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AeNLHymZsDWKEF(Ljava/io/File;)J
    .locals 4

    const-string v0, "3751015"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method

.method public static HWe5FABzh477cj3A7()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static JDA5tn7QWMUNEDVaPe(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, LjQaa7YP/GLtqH7G;->iyDGJPeog:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LjQaa7YP/GLtqH7G;->iyDGJPeog:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static LdiCmqfQWeZY(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x2e

    invoke-static {v0}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static NmniUdcojMgZKeg(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public static Osaa35GMvWmleJ6PA(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.wolfram.android.alpha"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-static {}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk()[Landroid/content/pm/Signature;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x7

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, LjQaa7YP/GLtqH7G;->wmyXqoIieE9odgvBu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    throw v0

    :cond_2
    invoke-static {p1}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "com.wolfram.android.alpha"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected static QSiBC0CYe45GOk(Ljava/io/File;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.wolfram.android.alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static QSiBC0CYe45GOk(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "%!KeyPackage%"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "%!KeyPackage%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.wolfram.android.alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.wolfram.android.alpha"

    const/16 v1, 0x1c

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, "com.wolfram.android.alpha"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    invoke-static {v0}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected static QSiBC0CYe45GOk()[Landroid/content/pm/Signature;
    .locals 5

    const-string v0, "847"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v0, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    const-string v4, "3082032f3082021702044c9a5d43300d06092a864886f70d0101040500305c310b3009060355040613025553310b300906035504081302494c31123010060355040713094368616d706169676e310c300a060355040a1303575249310c300a060355040b13035752493110300e06035504031307556e6b6e6f776e301e170d3130303932323139343731355a170d3338303230373139343731355a305c310b3009060355040613025553310b300906035504081302494c31123010060355040713094368616d706169676e310c300a060355040a1303575249310c300a060355040b13035752493110300e06035504031307556e6b6e6f776e30820122300d06092a864886f70d01010105000382010f003082010a0282010100bfcc11796fa790200c83538ac2ea80987556bce0dfd35e59668ca60ace152e4404c8bdf057cdab6054e7c2c67eec804427467a5428f20e0bc1423e84927201ba8850f48e28963dd3b8404256cd94d8b2a8019b785ccd9d58e67212db6f8a0efc54185eb7f509436bc52744ad6f608e776568df3f1ce3353c44afd17d937c823ea18974ec1ff2e958e885865f4ca3128c013ae989e5bcc402061210eee6585705b095c801db219eaab718a27c3cc2cd4ddb84301cb45b4cf06770c03012f808560761d3999c1acac0086a6883b22e7626bb161b6e417711c36062a32fce92e0ad2b5ae6ab985b2edee361613975e6f5e97eb8389c026ac1f8a12e6b3a32e586310203010001300d06092a864886f70d01010405000382010100a6e948a0c2eef317587fb137d53dba6b0ec1cec2937f51d20807fa1e2ef5b1a71a4dd99285d0481eb9f87bdeb78625a4669e6622e82d5661764eb494de67c6483a5c1b4d30798119c9cc255d97e6d5b0a5d4608b6d5deeba1f64fcd408eedd543ba84e1f1270f2b5420189e0854007d5637d900103ab8b2ce7edad4a36d20085b9f6cab773a74623660e4a0b164e03ad92198dc446979594121cac54c298e3a86bb8a2e4adc42454a57a258e31fd1f9ae8232ca0b8b3aa1d4f045e706993281b39095b3736af2aae4661e12e77c0ff64928ec2be9db6f08c2c7dfaad372167082025a89fc1c5f4eab7bb304868686b0eaa676bb6553d811eb9e0fe7c7aeacec1"

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static RI0FfRv7Aj52()V
    .locals 0

    return-void
.end method

.method public static cpqMygUusVbWFu6(Landroid/content/Context;)V
    .locals 1

    sget-object v0, LjQaa7YP/GLtqH7G;->iyDGJPeog:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, LjQaa7YP/GLtqH7G;->iyDGJPeog:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static jAtIBrcHJ9iYfVC(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, LjQaa7YP/GLtqH7G;->cpqMygUusVbWFu6(Landroid/content/Context;)V

    return-void
.end method

.method public static jvplHMIPX7FkuI(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    invoke-static {v0}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public static lHuQNCOzocLJ(Ljava/io/File;)J
    .locals 4

    const-string v0, "1344552624053"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method

.method public static orahr3JDbv4FK(Landroid/content/pm/PackageManager;II)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LjQaa7YP/GLtqH7G;->orahr3JDbv4FK(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static orahr3JDbv4FK(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, LjQaa7YP/GLtqH7G;->iyDGJPeog:I

    if-nez v1, :cond_3

    const-string v1, "com.wolfram.android.alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.wolfram.android.alpha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, LjQaa7YP/GLtqH7G;->QSiBC0CYe45GOk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-static {v2}, LjQaa7YP/s7Pbyguz;->JOE7UTrW9pkur2yp6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget v1, LjQaa7YP/GLtqH7G;->iyDGJPeog:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, -0x4

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_4
    sget v1, LjQaa7YP/GLtqH7G;->iyDGJPeog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v0, v3

    goto :goto_1
.end method

.method public static v40bDknNCz9UihN()V
    .locals 0

    return-void
.end method

.method public static xEM46JJIMwzVXE(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object v0
.end method
