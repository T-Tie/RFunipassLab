; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjpj9nvev.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@strin = dso_local global [503 x i8] zeroinitializer, align 16
@str2 = dso_local local_unnamed_addr global [10 x i8] zeroinitializer, align 1
@jilu = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@used = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call i32 @getchar()
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @strin, i64 noundef 500)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @strin) #8
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %cmp5 = icmp sgt i32 %0, 0
  %1 = add i32 %conv, 1
  %.neg = sub i32 0, %0
  %2 = add i32 %1, %.neg
  %smax27 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %3 = add i32 %smax27, 1
  %wide.trip.count28 = zext i32 %3 to i64
  %wide.trip.count22 = zext i32 %2 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end42, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end42 ], [ 0, %entry ]
  %maxtime.0 = phi i32 [ %spec.select13, %for.end42 ], [ 0, %entry ]
  %exitcond29 = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29, label %for.end50, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  br i1 %cmp5, label %for.cond4, label %for.cond9.preheader

for.cond4:                                        ; preds = %for.cond4.preheader, %for.cond4
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.cond4 ], [ 0, %for.cond4.preheader ]
  %arrayidx = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %indvars.iv30
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx8 = getelementptr inbounds nuw [10 x i8], ptr @str2, i64 0, i64 %indvars.iv30
  store i8 %4, ptr %arrayidx8, align 1, !tbaa !9
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond4

for.cond9.preheader:                              ; preds = %for.cond4.preheader
  %arrayidx35 = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvars.iv24
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc40
  %indvars.iv19 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next20, %for.inc40 ]
  %exitcond23 = icmp eq i64 %indvars.iv19, %wide.trip.count22
  br i1 %exitcond23, label %for.end42, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr @used, i64 0, i64 %indvars.iv19
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !10
  %cmp15 = icmp eq i32 %5, 1
  br i1 %cmp15, label %for.inc40, label %if.then33

if.then33:                                        ; preds = %for.body12
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !10
  %inc36 = add nsw i32 %6, 1
  store i32 %inc36, ptr %arrayidx35, align 4, !tbaa !5
  store i32 1, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %if.then33, %for.body12
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond9, !llvm.loop !11

for.end42:                                        ; preds = %for.cond9
  %7 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !10
  %spec.select13 = call i32 @llvm.smax.i32(i32 %maxtime.0, i32 %7)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond, !llvm.loop !14

for.end50:                                        ; preds = %for.cond
  %cmp51 = icmp eq i32 %maxtime.0, 1
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end50
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %if.end79

if.else:                                          ; preds = %for.end50
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %maxtime.0)
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call54, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = load i32, ptr @jilu, align 16
  %cmp62 = icmp eq i32 %8, %maxtime.0
  br label %for.cond56

for.cond56:                                       ; preds = %if.end75, %if.else
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %if.end75 ], [ 0, %if.else ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp58.not = icmp sgt i32 %9, %conv
  br i1 %cmp58.not, label %if.end79, label %for.body59

for.body59:                                       ; preds = %for.cond56
  br i1 %cmp62, label %for.cond64, label %if.end75

for.cond64:                                       ; preds = %for.body59, %for.body66
  %10 = phi i32 [ %.pre, %for.body66 ], [ %9, %for.body59 ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.body66 ], [ 0, %for.body59 ]
  %cmp65 = icmp sgt i32 %10, 0
  br i1 %cmp65, label %for.body66, label %for.end73

for.body66:                                       ; preds = %for.cond64
  %11 = add nuw nsw i64 %indvars.iv34, %indvars.iv38
  %arrayidx69 = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %11
  %12 = load i8, ptr %arrayidx69, align 1, !tbaa !9, !invariant.load !10
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond64

for.end73:                                        ; preds = %for.cond64
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end75

if.end75:                                         ; preds = %for.end73, %for.body59
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond56

if.end79:                                         ; preds = %for.cond56, %if.then52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
