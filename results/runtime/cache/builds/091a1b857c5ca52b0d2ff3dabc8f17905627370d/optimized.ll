; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuhu4tefw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i8], align 16
  %b = alloca [501 x [6 x i8]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 3006, ptr noundef align 16 %b) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 3006, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a)
  %call3 = call i64 @strlen(ptr noundef %a) #8
  %conv = trunc i64 %call3 to i32
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx6 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %2, ptr %arrayidx6, align 1, !tbaa !9
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 4
  store i8 1, ptr %arrayidx8, align 4, !tbaa !9
  %arrayidx10 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 5
  store i8 0, ptr %arrayidx10, align 1, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc68, %for.end
  %l.0 = phi i32 [ 1, %for.end ], [ %l.1, %for.inc68 ]
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %1
  %cmp12 = icmp sle i32 %3, %sub
  br i1 %cmp12, label %for.body13, label %for.end70

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc41, %for.body13
  %y.0 = phi i32 [ 0, %for.body13 ], [ %y.1, %for.inc41 ]
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %4, %l.0
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %x.0 = phi i32 [ 0, %for.body16 ], [ %x.1, %for.inc30 ]
  %m.0 = phi i32 [ 0, %for.body16 ], [ %inc31, %for.inc30 ]
  %cmp18 = icmp slt i32 %m.0, %1
  br i1 %cmp18, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond17
  %add = add nsw i32 %3, %m.0
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom20
  %5 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %conv22 = sext i8 %5 to i32
  %idxprom23 = sext i32 %4 to i64
  %arrayidx24 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom23
  %idxprom25 = sext i32 %m.0 to i64
  %arrayidx26 = getelementptr inbounds [6 x i8], ptr %arrayidx24, i64 0, i64 %idxprom25
  %6 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %conv27 = sext i8 %6 to i32
  %cmp28 = icmp ne i32 %conv22, %conv27
  br i1 %cmp28, label %if.then, label %for.inc30

if.then:                                          ; preds = %for.body19
  %inc29 = add nsw i32 %x.0, 1
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19, %if.then
  %x.1 = phi i32 [ %inc29, %if.then ], [ %x.0, %for.body19 ]
  %inc31 = add nsw i32 %m.0, 1
  br label %for.cond17, !llvm.loop !13

for.end32:                                        ; preds = %for.cond17
  %cmp33 = icmp eq i32 %x.0, 0
  br i1 %cmp33, label %if.then34, label %for.inc41

if.then34:                                        ; preds = %for.end32
  %idxprom35 = sext i32 %4 to i64
  %arrayidx36 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [6 x i8], ptr %arrayidx36, i64 0, i64 4
  %7 = load i8, ptr %arrayidx37, align 2, !tbaa !9
  %inc38 = add i8 %7, 1
  store i8 %inc38, ptr %arrayidx37, align 2, !tbaa !9
  %inc39 = add nsw i32 %y.0, 1
  br label %for.inc41

for.inc41:                                        ; preds = %for.end32, %if.then34
  %y.1 = phi i32 [ %inc39, %if.then34 ], [ %y.0, %for.end32 ]
  %inc42 = add nsw i32 %4, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end43:                                        ; preds = %for.cond14
  %cmp44 = icmp eq i32 %y.0, 0
  br i1 %cmp44, label %if.then45, label %for.inc68

if.then45:                                        ; preds = %for.end43
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc56, %if.then45
  %m.1 = phi i32 [ 0, %if.then45 ], [ %inc57, %for.inc56 ]
  %cmp47 = icmp slt i32 %m.1, %1
  %idxprom59 = sext i32 %l.0 to i64
  br i1 %cmp47, label %for.inc56, label %for.end58

for.inc56:                                        ; preds = %for.cond46
  %add49 = add nsw i32 %3, %m.1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom50
  %8 = load i8, ptr %arrayidx51, align 1, !tbaa !9
  %arrayidx53 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom59
  %idxprom54 = sext i32 %m.1 to i64
  %arrayidx55 = getelementptr inbounds [6 x i8], ptr %arrayidx53, i64 0, i64 %idxprom54
  store i8 %8, ptr %arrayidx55, align 1, !tbaa !9
  %inc57 = add nsw i32 %m.1, 1
  br label %for.cond46, !llvm.loop !15

for.end58:                                        ; preds = %for.cond46
  %arrayidx60 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [6 x i8], ptr %arrayidx60, i64 0, i64 4
  store i8 1, ptr %arrayidx61, align 2, !tbaa !9
  %conv62 = trunc i32 %l.0 to i8
  %arrayidx65 = getelementptr inbounds [6 x i8], ptr %arrayidx60, i64 0, i64 5
  store i8 %conv62, ptr %arrayidx65, align 1, !tbaa !9
  %inc66 = add nsw i32 %l.0, 1
  br label %for.inc68

for.inc68:                                        ; preds = %for.end43, %for.end58
  %l.1 = phi i32 [ %inc66, %for.end58 ], [ %l.0, %for.end43 ]
  %inc69 = add nsw i32 %3, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !16

for.end70:                                        ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc121, %for.end70
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %sub72 = sub nsw i32 %l.0, 1
  %cmp73 = icmp slt i32 %9, %sub72
  br i1 %cmp73, label %for.body74, label %for.end123

for.body74:                                       ; preds = %for.cond71
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %for.body74
  %i.sink1 = phi ptr [ %i, %for.body74 ], [ %j, %for.inc118 ]
  %10 = load i32, ptr %i.sink1, align 4, !tbaa !5
  %add75 = add nsw i32 %10, 1
  store i32 %add75, ptr %j, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %add75, %l.0
  br i1 %cmp77, label %for.body78, label %for.inc121

for.body78:                                       ; preds = %for.cond76
  %idxprom79 = sext i32 %add75 to i64
  %arrayidx80 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [6 x i8], ptr %arrayidx80, i64 0, i64 4
  %11 = load i8, ptr %arrayidx81, align 2, !tbaa !9
  %conv82 = sext i8 %11 to i32
  %idxprom83 = sext i32 %9 to i64
  %arrayidx84 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [6 x i8], ptr %arrayidx84, i64 0, i64 4
  %12 = load i8, ptr %arrayidx85, align 2, !tbaa !9
  %conv86 = sext i8 %12 to i32
  %cmp87 = icmp sgt i32 %conv82, %conv86
  br i1 %cmp87, label %if.then88, label %for.inc118

if.then88:                                        ; preds = %for.body78
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc114, %if.then88
  %z.0 = phi i32 [ 0, %if.then88 ], [ %inc115, %for.inc114 ]
  %cmp90 = icmp slt i32 %z.0, 6
  br i1 %cmp90, label %for.inc114, label %for.inc118

for.inc114:                                       ; preds = %for.cond89
  %idxprom94 = sext i32 %z.0 to i64
  %arrayidx95 = getelementptr inbounds [6 x i8], ptr %arrayidx80, i64 0, i64 %idxprom94
  %13 = load i8, ptr %arrayidx95, align 1, !tbaa !9
  %arrayidx96 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %arrayidx98 = getelementptr inbounds [6 x i8], ptr %arrayidx96, i64 0, i64 %idxprom94
  store i8 %13, ptr %arrayidx98, align 1, !tbaa !9
  %arrayidx102 = getelementptr inbounds [6 x i8], ptr %arrayidx84, i64 0, i64 %idxprom94
  %14 = load i8, ptr %arrayidx102, align 1, !tbaa !9
  store i8 %14, ptr %arrayidx95, align 1, !tbaa !9
  %15 = load i8, ptr %arrayidx98, align 1, !tbaa !9
  store i8 %15, ptr %arrayidx102, align 1, !tbaa !9
  %inc115 = add nsw i32 %z.0, 1
  br label %for.cond89, !llvm.loop !17

for.inc118:                                       ; preds = %for.body78, %for.cond89
  br label %for.cond76, !llvm.loop !18

for.inc121:                                       ; preds = %for.cond76
  %inc122 = add nsw i32 %9, 1
  store i32 %inc122, ptr %i, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !19

for.end123:                                       ; preds = %for.cond71
  %16 = load i8, ptr %arrayidx8, align 4, !tbaa !9
  %conv126 = sext i8 %16 to i32
  %cmp127 = icmp eq i32 %conv126, 1
  br i1 %cmp127, label %if.then128, label %if.else

if.then128:                                       ; preds = %for.end123
  %call129 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #9
  br label %if.end226

if.else:                                          ; preds = %for.end123
  %call133 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv126) #9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.else
  %phiofops = phi i32 [ 0, %if.else ], [ %z.1, %for.inc151 ]
  %z.1 = phi i32 [ 1, %if.else ], [ %inc148, %for.inc151 ]
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %17, %l.0
  br i1 %cmp135, label %for.body136, label %for.end153

for.body136:                                      ; preds = %for.cond134
  %idxprom137 = sext i32 %17 to i64
  %arrayidx138 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [6 x i8], ptr %arrayidx138, i64 0, i64 4
  %18 = load i8, ptr %arrayidx139, align 2, !tbaa !9
  %conv140 = sext i8 %18 to i32
  %sub141 = sub nsw i32 %17, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [6 x i8], ptr %arrayidx143, i64 0, i64 4
  %19 = load i8, ptr %arrayidx144, align 2, !tbaa !9
  %conv145 = sext i8 %19 to i32
  %cmp146 = icmp eq i32 %conv140, %conv145
  br i1 %cmp146, label %for.inc151, label %for.end153

for.inc151:                                       ; preds = %for.body136
  %inc148 = add nsw i32 %z.1, 1
  %inc152 = add nsw i32 %17, 1
  store i32 %inc152, ptr %i, align 4, !tbaa !5
  br label %for.cond134, !llvm.loop !20

for.end153:                                       ; preds = %for.body136, %for.cond134
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc204, %for.end153
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %20, %phiofops
  br i1 %cmp156, label %for.body157, label %for.end206

for.body157:                                      ; preds = %for.cond154
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc201, %for.body157
  %i.sink = phi ptr [ %i, %for.body157 ], [ %j, %for.inc201 ]
  %21 = load i32, ptr %i.sink, align 4, !tbaa !5
  %add158 = add nsw i32 %21, 1
  store i32 %add158, ptr %j, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %add158, %z.1
  br i1 %cmp160, label %for.body161, label %for.inc204

for.body161:                                      ; preds = %for.cond159
  %idxprom162 = sext i32 %add158 to i64
  %arrayidx163 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [6 x i8], ptr %arrayidx163, i64 0, i64 5
  %22 = load i8, ptr %arrayidx164, align 1, !tbaa !9
  %conv165 = sext i8 %22 to i32
  %idxprom166 = sext i32 %20 to i64
  %arrayidx167 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [6 x i8], ptr %arrayidx167, i64 0, i64 5
  %23 = load i8, ptr %arrayidx168, align 1, !tbaa !9
  %conv169 = sext i8 %23 to i32
  %cmp170 = icmp slt i32 %conv165, %conv169
  br i1 %cmp170, label %if.then171, label %for.inc201

if.then171:                                       ; preds = %for.body161
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc197, %if.then171
  %k.0 = phi i32 [ 0, %if.then171 ], [ %inc198, %for.inc197 ]
  %cmp173 = icmp slt i32 %k.0, 6
  br i1 %cmp173, label %for.inc197, label %for.inc201

for.inc197:                                       ; preds = %for.cond172
  %idxprom177 = sext i32 %k.0 to i64
  %arrayidx178 = getelementptr inbounds [6 x i8], ptr %arrayidx163, i64 0, i64 %idxprom177
  %24 = load i8, ptr %arrayidx178, align 1, !tbaa !9
  %arrayidx179 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %arrayidx181 = getelementptr inbounds [6 x i8], ptr %arrayidx179, i64 0, i64 %idxprom177
  store i8 %24, ptr %arrayidx181, align 1, !tbaa !9
  %arrayidx185 = getelementptr inbounds [6 x i8], ptr %arrayidx167, i64 0, i64 %idxprom177
  %25 = load i8, ptr %arrayidx185, align 1, !tbaa !9
  store i8 %25, ptr %arrayidx178, align 1, !tbaa !9
  %26 = load i8, ptr %arrayidx181, align 1, !tbaa !9
  store i8 %26, ptr %arrayidx185, align 1, !tbaa !9
  %inc198 = add nsw i32 %k.0, 1
  br label %for.cond172, !llvm.loop !21

for.inc201:                                       ; preds = %for.body161, %for.cond172
  br label %for.cond159, !llvm.loop !22

for.inc204:                                       ; preds = %for.cond159
  %inc205 = add nsw i32 %20, 1
  store i32 %inc205, ptr %i, align 4, !tbaa !5
  br label %for.cond154, !llvm.loop !23

for.end206:                                       ; preds = %for.cond154
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc223, %for.end206
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %27, %z.1
  br i1 %cmp208, label %for.body209, label %if.end226

for.body209:                                      ; preds = %for.cond207
  %call210 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc220, %for.body209
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %28, %29
  br i1 %cmp212, label %for.inc220, label %for.inc223

for.inc220:                                       ; preds = %for.cond211
  %idxprom214 = sext i32 %27 to i64
  %arrayidx215 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom214
  %idxprom216 = sext i32 %28 to i64
  %arrayidx217 = getelementptr inbounds [6 x i8], ptr %arrayidx215, i64 0, i64 %idxprom216
  %30 = load i8, ptr %arrayidx217, align 1, !tbaa !9
  %conv218 = sext i8 %30 to i32
  %call219 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv218) #9
  %inc221 = add nsw i32 %28, 1
  store i32 %inc221, ptr %j, align 4, !tbaa !5
  br label %for.cond211, !llvm.loop !24

for.inc223:                                       ; preds = %for.cond211
  %inc224 = add nsw i32 %27, 1
  store i32 %inc224, ptr %i, align 4, !tbaa !5
  br label %for.cond207, !llvm.loop !25

if.end226:                                        ; preds = %for.cond207, %if.then128
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 3006, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef %a) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
