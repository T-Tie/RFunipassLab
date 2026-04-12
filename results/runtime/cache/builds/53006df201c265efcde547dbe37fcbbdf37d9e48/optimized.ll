; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgcbre_hb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2jzPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %sum = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %k.sink = phi i32 [ %k, %entry ], [ %dec, %for.inc135 ]
  %cmp = icmp sgt i32 %k.sink, 1
  br i1 %cmp, label %for.body, label %for.end136

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc31, %for.body
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %0, %k.sink
  br i1 %cmp2, label %for.body3, label %for.end33

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %1, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %2, %k.sink
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %idxprom10 = sext i32 %2 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %4 = load i32, ptr %min, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %3, %4
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  store i32 %3, ptr %min, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc28, %for.end
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %5, %k.sink
  br i1 %cmp18, label %for.inc28, label %for.inc31

for.inc28:                                        ; preds = %for.cond17
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %7 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %inc29 = add nsw i32 %5, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond17
  %inc32 = add nsw i32 %0, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end33:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc88, %for.end33
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %8, %k.sink
  br i1 %cmp35, label %for.body36, label %for.end90

for.body36:                                       ; preds = %for.cond34
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc47, %for.body36
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %9, %k.sink
  %idxprom53 = sext i32 %8 to i64
  br i1 %cmp38, label %for.body39, label %if.then51

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %9 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom40
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom53
  %10 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %10, 0
  br i1 %cmp44, label %for.inc88, label %for.inc47

for.inc47:                                        ; preds = %for.body39
  %inc48 = add nsw i32 %9, 1
  store i32 %inc48, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

if.then51:                                        ; preds = %for.cond37
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom53
  %11 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  store i32 %11, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %if.then51
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %12, %k.sink
  br i1 %cmp56, label %for.body57, label %for.end71

for.body57:                                       ; preds = %for.cond55
  %idxprom58 = sext i32 %12 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx59, i64 0, i64 %idxprom53
  %13 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %14 = load i32, ptr %min, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %13, %14
  br i1 %cmp62, label %if.then63, label %for.inc69

if.then63:                                        ; preds = %for.body57
  store i32 %13, ptr %min, align 4, !tbaa !5
  br label %for.inc69

for.inc69:                                        ; preds = %for.body57, %if.then63
  %inc70 = add nsw i32 %12, 1
  store i32 %inc70, ptr %j, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !15

for.end71:                                        ; preds = %for.cond55
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc84, %for.end71
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %15, %k.sink
  br i1 %cmp73, label %for.inc84, label %for.inc88

for.inc84:                                        ; preds = %for.cond72
  %idxprom75 = sext i32 %15 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom75
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %arrayidx76, i64 0, i64 %idxprom53
  %16 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %sub79 = sub nsw i32 %16, %17
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %inc85 = add nsw i32 %15, 1
  store i32 %inc85, ptr %j, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !16

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %inc89 = add nsw i32 %8, 1
  store i32 %inc89, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !17

for.end90:                                        ; preds = %for.cond34
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx91 = getelementptr inbounds [100 x i32], ptr %a, i64 1
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx91, i64 0, i64 1
  %19 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %add = add nsw i32 %18, %19
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %20, %k.sink
  br i1 %cmp94, label %for.body95, label %for.end113

for.body95:                                       ; preds = %for.cond93
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %for.body95
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %21, %k.sink
  br i1 %cmp97, label %for.inc108, label %for.inc111

for.inc108:                                       ; preds = %for.cond96
  %idxprom99 = sext i32 %20 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom99
  %idxprom101 = sext i32 %21 to i64
  %arrayidx102 = getelementptr inbounds [100 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %22 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %sub105 = sub nsw i32 %21, 1
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %arrayidx100, i64 0, i64 %idxprom106
  store i32 %22, ptr %arrayidx107, align 4, !tbaa !5
  %inc109 = add nsw i32 %21, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond96
  %inc112 = add nsw i32 %20, 1
  store i32 %inc112, ptr %i, align 4, !tbaa !5
  br label %for.cond93, !llvm.loop !19

for.end113:                                       ; preds = %for.cond93
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc132, %for.end113
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %23, %k.sink
  br i1 %cmp115, label %for.body116, label %for.inc135

for.body116:                                      ; preds = %for.cond114
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body116
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %24, %k.sink
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond117
  %idxprom120 = sext i32 %24 to i64
  %arrayidx121 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom120
  %idxprom122 = sext i32 %23 to i64
  %arrayidx123 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom122
  %25 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %sub124 = sub nsw i32 %24, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom125
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom122
  store i32 %25, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %24, 1
  store i32 %inc130, ptr %j, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %inc133 = add nsw i32 %23, 1
  store i32 %inc133, ptr %i, align 4, !tbaa !5
  br label %for.cond114, !llvm.loop !21

for.inc135:                                       ; preds = %for.cond114
  %dec = add nsw i32 %k.sink, -1
  br label %for.cond, !llvm.loop !22

for.end136:                                       ; preds = %for.cond
  %26 = load i32, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %sum) #6
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %num) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %ans) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %num, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !24

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %num, i32 noundef %3) #7
  %idxprom14 = sext i32 %0 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %ans, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %0, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end18:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end18
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %6, %7
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %6 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %ans, i64 0, i64 %idxprom22
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc27 = add nsw i32 %6, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !26

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %ans) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %num) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
