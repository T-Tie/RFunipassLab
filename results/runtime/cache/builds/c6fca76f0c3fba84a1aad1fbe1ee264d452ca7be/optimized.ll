; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_mmoa9rj.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [550 x i8], align 16
  %n = alloca i32, align 4
  %b = alloca [550 x [6 x i8]], align 16
  %c = alloca [550 x [6 x i8]], align 16
  %num = alloca [550 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i20 = alloca i32, align 4
  %j26 = alloca i32, align 4
  %max = alloca i32, align 4
  %i50 = alloca i32, align 4
  %i72 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 550, ptr noundef nonnull align 16 captures(none) dereferenceable(550) %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(550) %a, i64 noundef 550)
  %call4 = call i64 @strlen(ptr noundef %a) #8
  %conv = trunc i64 %call4 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef %b) #9
  call void @llvm.memset.p0.i64(ptr noundef align 16 %b, i8 noundef 0, i64 noundef 3300, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef %c) #9
  call void @llvm.memset.p0.i64(ptr noundef align 16 %c, i8 noundef 0, i64 noundef 3300, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 2200, ptr noundef %num) #9
  call void @llvm.memset.p0.i64(ptr noundef align 16 %num, i8 noundef 0, i64 noundef 2200, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %1
  %idxprom13 = sext i32 %0 to i64
  %idxprom15 = sext i32 %2 to i64
  br i1 %cmp7, label %for.inc, label %for.inc17

for.inc:                                          ; preds = %for.cond6
  %add = add nsw i32 %2, %0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [550 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx10 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom13
  %arrayidx12 = getelementptr inbounds [6 x i8], ptr %arrayidx10, i64 0, i64 %idxprom15
  store i8 %3, ptr %arrayidx12, align 1, !tbaa !9
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !11

for.inc17:                                        ; preds = %for.cond6
  %arrayidx14 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [6 x i8], ptr %arrayidx14, i64 0, i64 %idxprom15
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #9
  %inc18 = add nsw i32 %0, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i20) #9
  store i32 0, ptr %i20, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end19
  %4 = load i32, ptr %i20, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %4, %sub
  br i1 %cmp23, label %for.body25, label %for.end49

for.body25:                                       ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j26) #9
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body25
  %i20.sink = phi ptr [ %i20, %for.body25 ], [ %j26, %for.inc44 ]
  %5 = load i32, ptr %i20.sink, align 4, !tbaa !5
  %add27 = add nsw i32 %5, 1
  store i32 %add27, ptr %j26, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %add27, %sub
  br i1 %cmp30, label %for.body32, label %for.inc47

for.body32:                                       ; preds = %for.cond28
  %idxprom33 = sext i32 %4 to i64
  %arrayidx34 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom33
  %idxprom36 = sext i32 %add27 to i64
  %arrayidx37 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom36
  %call39 = call i32 @strcmp(ptr noundef readonly captures(none) %arrayidx34, ptr noundef readonly captures(none) %arrayidx37) #8
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then, label %for.inc44

if.then:                                          ; preds = %for.body32
  %arrayidx42 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom33
  %6 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !10
  %inc43 = add nsw i32 %6, 1
  store i32 %inc43, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body32, %if.then
  br label %for.cond28, !llvm.loop !15

for.inc47:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j26) #9
  %inc48 = add nsw i32 %4, 1
  store i32 %inc48, ptr %i20, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !16

for.end49:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i20) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %max) #9
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i50) #9
  store i32 0, ptr %i50, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc63, %for.end49
  %7 = load i32, ptr %i50, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %7, %sub
  br i1 %cmp53, label %for.body55, label %for.end65

for.body55:                                       ; preds = %for.cond51
  %8 = load i32, ptr %max, align 4, !tbaa !5
  %idxprom56 = sext i32 %7 to i64
  %arrayidx57 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom56
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !10
  %cmp58 = icmp slt i32 %8, %9
  br i1 %cmp58, label %if.then59, label %for.inc63

if.then59:                                        ; preds = %for.body55
  store i32 %9, ptr %max, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body55, %if.then59
  %inc64 = add nsw i32 %7, 1
  store i32 %inc64, ptr %i50, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !17

for.end65:                                        ; preds = %for.cond51
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i50) #9
  %10 = load i32, ptr %max, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %10, 0
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %for.end65
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) @.str)
  br label %if.end91

if.else:                                          ; preds = %for.end65
  %add69 = add nsw i32 %10, 1
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %add69)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call70, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i72) #9
  store i32 0, ptr %i72, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc88, %if.else
  %11 = load i32, ptr %i72, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %conv, %12
  %cmp75 = icmp slt i32 %11, %sub74
  br i1 %cmp75, label %for.body77, label %for.end90

for.body77:                                       ; preds = %for.cond73
  %idxprom78 = sext i32 %11 to i64
  %arrayidx79 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom78
  %13 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !10
  %cmp80 = icmp eq i32 %13, %10
  br i1 %cmp80, label %if.then81, label %for.inc88

if.then81:                                        ; preds = %for.body77
  %arrayidx83 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom78
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx83)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc88

for.inc88:                                        ; preds = %for.body77, %if.then81
  %inc89 = add nsw i32 %11, 1
  store i32 %inc89, ptr %i72, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !18

for.end90:                                        ; preds = %for.cond73
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i72) #9
  br label %if.end91

if.end91:                                         ; preds = %for.end90, %if.then67
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %max) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2200, ptr noundef %num) #9
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 550, ptr noundef captures(none) %a) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
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
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
