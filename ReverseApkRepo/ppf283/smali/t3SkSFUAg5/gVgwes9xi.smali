.class public final Lt3SkSFUAg5/gVgwes9xi;
.super Ljava/lang/Object;
.source "JUST_GIVE_IT_UP"


# static fields
.field private static final KXGtIjuaErBhj3pX1:I

.field private static final YcLwF0y8Phde:I

.field protected static YcLwF0y8Phde:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:I

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lt3SkSFUAg5/gVgwes9xi;->KXGtIjuaErBhj3pX1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Gp8LmheJfw0seQEG(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x2e

    invoke-static {v0}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static M8pD8DXny8FHLNj(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object v0
.end method

.method public static QnEiZa9Uhrw(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static Tav0zFkWq(Landroid/content/pm/PackageManager;II)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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

    invoke-static {p0, v0, v1}, Lt3SkSFUAg5/gVgwes9xi;->Tav0zFkWq(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static Tav0zFkWq(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v1, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:I

    if-nez v1, :cond_3

    const-string v1, "com.jellybus.fx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.jellybus.fx"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget v1, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, -0x4

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_4
    sget v1, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v0, v3

    goto :goto_1
.end method

.method public static VWYdzGYlbhr4mKiM1(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
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

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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

.method public static We9PZOIwlopjNt6Lqz(Ljava/io/File;)J
    .locals 4

    const-string v0, "11909962"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method

.method public static Y2dWoI3Vqds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static auDEnGHTV4zrtcM(Ljava/io/File;)J
    .locals 4

    const-string v0, "1344596599869"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-wide v0
.end method

.method public static i6pTLlT68PluT5zHpT()V
    .locals 0

    return-void
.end method

.method protected static iXuxbWW3RJPh19NL97(Ljava/io/File;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.jellybus.fx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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

.method private static iXuxbWW3RJPh19NL97(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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
    const-string v0, "com.jellybus.fx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.jellybus.fx"

    const/16 v1, 0x1c

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, "com.jellybus.fx"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1d

    invoke-static {v0}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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

.method protected static iXuxbWW3RJPh19NL97()[Landroid/content/pm/Signature;
    .locals 5

    const-string v0, "729"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v0, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    const-string v4, "3082021930820182a00302010202044d0efbc8300d06092a864886f70d01010505003051310b3009060355040613023832310e300c0603550407130553656f756c3111300f060355040a13084a656c6c79427573310c300a060355040b13034465763111300f060355040313084a656c6c79427573301e170d3130313232303036343633325a170d3430313231323036343633325a3051310b3009060355040613023832310e300c0603550407130553656f756c3111300f060355040a13084a656c6c79427573310c300a060355040b13034465763111300f060355040313084a656c6c7942757330819f300d06092a864886f70d010101050003818d0030818902818100aa6627b3f400e67df01dbfe2ddea1e7eefae44a5681e2ebee11e8c8a3c3b556641a14ebffd34009db99f287e0d7f936c07e683b7e249b35438c6bd9624af344459dea40638de74de0043df505521a44652ad8684b9c4798d45e4d9e7a51a8b7af9efc060a607af835222f808513642ce66a8f3175277394c4ea0c003b5f571d50203010001300d06092a864886f70d0101050500038181001b90685012978453e43ffb75629e8719715988e8d902cf4237188c8d010cba0c9b45e059b2665b8a17b53ee2984ac643972057bbc182fd48a9bfcf2612dffd48c1c67fe48fad39d567f5471a6d274a35d2d72f9936845db4266c94ca92625e2ca4c32601366da0fc38161568d631f7c0e99d413c91737fbd194647404f0b43c4"

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ly3aQd11du30(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lt3SkSFUAg5/gVgwes9xi;->YcLwF0y8Phde:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.jellybus.fx"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-static {}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97()[Landroid/content/pm/Signature;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x7

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

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

    sget v1, Lt3SkSFUAg5/gVgwes9xi;->KXGtIjuaErBhj3pX1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    throw v0

    :cond_2
    invoke-static {p1}, Lt3SkSFUAg5/gVgwes9xi;->iXuxbWW3RJPh19NL97(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "com.jellybus.fx"

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static p2AXINKhDvkAmg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lt3SkSFUAg5/gVgwes9xi;->QnEiZa9Uhrw(Landroid/content/Context;)V

    return-void
.end method

.method public static sXrOhcmMX91v1k()V
    .locals 0

    return-void
.end method

.method public static tsBKsuY3OhMSsgTB4A(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    invoke-static {v0}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-static {v3}, Lt3SkSFUAg5/Ch2dZ2FwHded;->CiWqGUcGC4YC(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method
