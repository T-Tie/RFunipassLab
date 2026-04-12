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
  %num = alloca [550 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 550, ptr noundef nonnull align 16 %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 550)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv = trunc i64 %call4 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef nonnull %b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3300) %b, i8 noundef 0, i64 noundef 3300, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 2200, ptr noundef nonnull %num) #10
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax9 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax9, 1
  %wide.trip.count10 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc17 ], [ 0, %entry ]
  %exitcond11 = icmp eq i64 %indvars.iv6, %wide.trip.count10
  br i1 %exitcond11, label %for.cond21.preheader, label %for.cond6

for.cond21.preheader:                             ; preds = %for.cond
  %smax20 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count21 = zext nneg i32 %smax20 to i64
  %wide.trip.count17 = zext i32 %sub to i64
  br label %for.cond21

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc17, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv6
  %arrayidx = getelementptr inbounds nuw [550 x i8], ptr %a, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx12 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  store i8 %3, ptr %arrayidx12, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !11

for.inc17:                                        ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv6, i64 %wide.trip.count
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond, !llvm.loop !14

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc47
  %indvars.iv12 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next13, %for.inc47 ]
  %exitcond22.not = icmp eq i64 %indvars.iv12, %wide.trip.count21
  br i1 %exitcond22.not, label %for.cond51, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond21
  %arrayidx34 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv12
  %arrayidx42 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv12
  br label %for.cond28

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc44
  %indvars.iv14 = phi i64 [ %indvars.iv12, %for.cond28.preheader ], [ %indvars.iv.next15, %for.inc44 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond18.not = icmp eq i64 %indvars.iv14, %wide.trip.count17
  br i1 %exitcond18.not, label %for.inc47, label %for.body32

for.body32:                                       ; preds = %for.cond28
  %arrayidx37 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv.next15
  %call39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx34, ptr noundef nonnull dereferenceable(1) %arrayidx37) #9
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then, label %for.inc44

if.then:                                          ; preds = %for.body32
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !10
  %inc43 = add nsw i32 %4, 1
  store i32 %inc43, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body32, %if.then
  br label %for.cond28, !llvm.loop !15

for.inc47:                                        ; preds = %for.cond28
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond21, !llvm.loop !16

for.cond51:                                       ; preds = %for.cond21, %for.body55
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body55 ], [ 0, %for.cond21 ]
  %max.0 = phi i32 [ %spec.select, %for.body55 ], [ 0, %for.cond21 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count21
  br i1 %exitcond27.not, label %for.end65, label %for.body55

for.body55:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv23
  %5 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !10
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %5)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond51, !llvm.loop !17

for.end65:                                        ; preds = %for.cond51
  %cmp66 = icmp eq i32 %max.0, 0
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %for.end65
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %if.end91

if.else:                                          ; preds = %for.end65
  %add69 = add nuw nsw i32 %max.0, 1
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add69)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call70, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc88, %if.else
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc88 ], [ 0, %if.else ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %conv, %6
  %7 = sext i32 %sub74 to i64
  %cmp75 = icmp slt i64 %indvars.iv28, %7
  br i1 %cmp75, label %for.body77, label %if.end91

for.body77:                                       ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw [550 x i32], ptr %num, i64 0, i64 %indvars.iv28
  %8 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !10
  %cmp80 = icmp eq i32 %8, %max.0
  br i1 %cmp80, label %if.then81, label %for.inc88

if.then81:                                        ; preds = %for.body77
  %arrayidx83 = getelementptr inbounds nuw [550 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv28
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx83)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc88

for.inc88:                                        ; preds = %for.body77, %if.then81
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond73, !llvm.loop !18

if.end91:                                         ; preds = %for.cond73, %if.then67
  call void @llvm.lifetime.end.p0(i64 noundef 2200, ptr noundef nonnull %num) #10
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 550, ptr noundef nonnull %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
