; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4tdplyf5.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
for.cond12.preheader:
  %k = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %r = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #7
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull align 16 %r) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %a, i8 noundef 0, i64 noundef 104, i1 noundef false)
  store i32 1, ptr %r, align 16, !tbaa !5
  %arrayidx7.1 = getelementptr inbounds nuw i8, ptr %r, i64 4
  store i32 1, ptr %arrayidx7.1, align 4, !tbaa !5
  %arrayidx7.2 = getelementptr inbounds nuw i8, ptr %r, i64 8
  store i32 1, ptr %arrayidx7.2, align 8, !tbaa !5
  %arrayidx7.3 = getelementptr inbounds nuw i8, ptr %r, i64 12
  store i32 1, ptr %arrayidx7.3, align 4, !tbaa !5
  %arrayidx7.4 = getelementptr inbounds nuw i8, ptr %r, i64 16
  store i32 1, ptr %arrayidx7.4, align 16, !tbaa !5
  %arrayidx7.5 = getelementptr inbounds nuw i8, ptr %r, i64 20
  store i32 1, ptr %arrayidx7.5, align 4, !tbaa !5
  %arrayidx7.6 = getelementptr inbounds nuw i8, ptr %r, i64 24
  store i32 1, ptr %arrayidx7.6, align 8, !tbaa !5
  %arrayidx7.7 = getelementptr inbounds nuw i8, ptr %r, i64 28
  store i32 1, ptr %arrayidx7.7, align 4, !tbaa !5
  %arrayidx7.8 = getelementptr inbounds nuw i8, ptr %r, i64 32
  store i32 1, ptr %arrayidx7.8, align 16, !tbaa !5
  %arrayidx7.9 = getelementptr inbounds nuw i8, ptr %r, i64 36
  store i32 1, ptr %arrayidx7.9, align 4, !tbaa !5
  %arrayidx7.10 = getelementptr inbounds nuw i8, ptr %r, i64 40
  store i32 1, ptr %arrayidx7.10, align 8, !tbaa !5
  %arrayidx7.11 = getelementptr inbounds nuw i8, ptr %r, i64 44
  store i32 1, ptr %arrayidx7.11, align 4, !tbaa !5
  %arrayidx7.12 = getelementptr inbounds nuw i8, ptr %r, i64 48
  store i32 1, ptr %arrayidx7.12, align 16, !tbaa !5
  %arrayidx7.13 = getelementptr inbounds nuw i8, ptr %r, i64 52
  store i32 1, ptr %arrayidx7.13, align 4, !tbaa !5
  %arrayidx7.14 = getelementptr inbounds nuw i8, ptr %r, i64 56
  store i32 1, ptr %arrayidx7.14, align 8, !tbaa !5
  %arrayidx7.15 = getelementptr inbounds nuw i8, ptr %r, i64 60
  store i32 1, ptr %arrayidx7.15, align 4, !tbaa !5
  %arrayidx7.16 = getelementptr inbounds nuw i8, ptr %r, i64 64
  store i32 1, ptr %arrayidx7.16, align 16, !tbaa !5
  %arrayidx7.17 = getelementptr inbounds nuw i8, ptr %r, i64 68
  store i32 1, ptr %arrayidx7.17, align 4, !tbaa !5
  %arrayidx7.18 = getelementptr inbounds nuw i8, ptr %r, i64 72
  store i32 1, ptr %arrayidx7.18, align 8, !tbaa !5
  %arrayidx7.19 = getelementptr inbounds nuw i8, ptr %r, i64 76
  store i32 1, ptr %arrayidx7.19, align 4, !tbaa !5
  %arrayidx7.20 = getelementptr inbounds nuw i8, ptr %r, i64 80
  store i32 1, ptr %arrayidx7.20, align 16, !tbaa !5
  %arrayidx7.21 = getelementptr inbounds nuw i8, ptr %r, i64 84
  store i32 1, ptr %arrayidx7.21, align 4, !tbaa !5
  %arrayidx7.22 = getelementptr inbounds nuw i8, ptr %r, i64 88
  store i32 1, ptr %arrayidx7.22, align 8, !tbaa !5
  %arrayidx7.23 = getelementptr inbounds nuw i8, ptr %r, i64 92
  store i32 1, ptr %arrayidx7.23, align 4, !tbaa !5
  %arrayidx7.24 = getelementptr inbounds nuw i8, ptr %r, i64 96
  store i32 1, ptr %arrayidx7.24, align 16, !tbaa !5
  %arrayidx7.25 = getelementptr inbounds nuw i8, ptr %r, i64 100
  store i32 1, ptr %arrayidx7.25, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.body15 ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp13 = icmp slt i64 %indvars.iv, %1
  br i1 %cmp13, label %for.body15, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond12
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count40 = zext nneg i32 %smax to i64
  br label %for.cond23

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond12

for.cond23:                                       ; preds = %for.cond23.preheader, %if.end52
  %indvars.iv36 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next37, %if.end52 ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond57, label %for.body26

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv36, 0
  br i1 %cmp27, label %if.then, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body26
  %arrayidx37 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv36
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %arrayidx42 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv36
  br label %for.cond30

if.then:                                          ; preds = %for.body26
  store i32 1, ptr %r, align 16, !tbaa !5
  br label %if.end52

for.cond30:                                       ; preds = %for.cond30.preheader, %if.end
  %indvars.iv33 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next34, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %indvars.iv36
  br i1 %exitcond.not, label %if.end52, label %for.body33

for.body33:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv33
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %cmp38.not = icmp slt i32 %3, %2
  br i1 %cmp38.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43.not = icmp slt i32 %4, %5
  br i1 %cmp43.not, label %if.end, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then44, %land.lhs.true, %for.body33
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond30

if.end52:                                         ; preds = %for.cond30, %if.then
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond23

for.cond57:                                       ; preds = %for.cond23, %for.body60
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body60 ], [ 0, %for.cond23 ]
  %s.0 = phi i32 [ %spec.select, %for.body60 ], [ 0, %for.cond23 ]
  %exitcond45.not = icmp eq i64 %indvars.iv42, %wide.trip.count40
  br i1 %exitcond45.not, label %for.end70, label %for.body60

for.body60:                                       ; preds = %for.cond57
  %arrayidx62 = getelementptr inbounds nuw [26 x i32], ptr %r, i64 0, i64 %indvars.iv42
  %6 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !9
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %s.0)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond57

for.end70:                                        ; preds = %for.cond57
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call71, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!9 = !{}
