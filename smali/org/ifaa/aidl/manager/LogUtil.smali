.class public Lorg/ifaa/aidl/manager/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final IS_DEBUGING:Z

.field private static sDEBUG:Z

.field private static sERROR:Z

.field private static sINFO:Z

.field private static sLogcatLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->IS_DEBUGING:Z

    const/4 v2, 0x2

    const/16 v3, 0x10

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 38
    :goto_0
    sput v0, Lorg/ifaa/aidl/manager/LogUtil;->sLogcatLevel:I

    .line 41
    sget v0, Lorg/ifaa/aidl/manager/LogUtil;->sLogcatLevel:I

    const/4 v4, 0x1

    if-gt v0, v2, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->sDEBUG:Z

    .line 42
    sget v0, Lorg/ifaa/aidl/manager/LogUtil;->sLogcatLevel:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->sINFO:Z

    .line 43
    sget v0, Lorg/ifaa/aidl/manager/LogUtil;->sLogcatLevel:I

    const/16 v2, 0x8

    .line 44
    sget v0, Lorg/ifaa/aidl/manager/LogUtil;->sLogcatLevel:I

    if-gt v0, v3, :cond_3

    move v1, v4

    :cond_3
    sput-boolean v1, Lorg/ifaa/aidl/manager/LogUtil;->sERROR:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    sget-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->sDEBUG:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFAA."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 99
    sget-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->sERROR:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFAA."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    sget-boolean v0, Lorg/ifaa/aidl/manager/LogUtil;->sINFO:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFAA."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
