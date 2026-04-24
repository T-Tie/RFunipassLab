; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyf5nuhlf.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %w = alloca [2000 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 100000, ptr noundef nonnull %w) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(100000) %w, i8 noundef 0, i64 noundef 100000, i1 noundef false) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %if.end ]
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  switch i32 %call2, label %if.then [
    i32 32, label %if.else
    i32 10, label %if.else
  ]

if.then:                                          ; preds = %do.body
  %conv = trunc i32 %call2 to i8
  %idxprom = sext i32 %i.0 to i64
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [2000 x [50 x i8]], ptr %w, i64 0, i64 %idxprom, i64 %idxprom4
  store i8 %conv, ptr %arrayidx5, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %if.end

if.else:                                          ; preds = %do.body, %do.body
  %inc6 = add nsw i32 %i.0, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.1 = phi i32 [ %i.0, %if.then ], [ %inc6, %if.else ]
  %j.1 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %i.1, %0
  br i1 %cmp8, label %do.body, label %for.cond, !llvm.loop !10

for.cond:                                         ; preds = %if.end, %if.end57
  %1 = phi i32 [ %.pre, %if.end57 ], [ %0, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end57 ], [ 0, %if.end ]
  %cd.0 = phi i32 [ %cd.2, %if.end57 ], [ 0, %if.end ]
  %2 = sext i32 %1 to i64
  %cmp9 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %conv10 = sext i32 %cd.0 to i64
  %arrayidx12 = getelementptr inbounds nuw [2000 x [50 x i8]], ptr %w, i64 0, i64 %indvars.iv
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #9
  %add = add i64 %call13, %conv10
  %cmp14 = icmp ult i64 %add, 81
  br i1 %cmp14, label %if.then15, label %if.else45

if.then15:                                        ; preds = %for.body
  %cmp16 = icmp eq i32 %cd.0, 0
  br i1 %cmp16, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.then15
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx12)
  %call27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #9
  %3 = trunc i64 %call27 to i32
  %conv29 = add i32 %3, 1
  br label %if.end57

if.else30:                                        ; preds = %if.then15
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call31, ptr noundef nonnull %arrayidx12)
  %add36 = add nsw i32 %cd.0, 1
  %call41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #9
  %4 = trunc i64 %call41 to i32
  %conv43 = add i32 %add36, %4
  br label %if.end57

if.else45:                                        ; preds = %for.body
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx12)
  %call54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx12) #9
  %5 = trunc i64 %call54 to i32
  %conv56 = add i32 %5, 1
  br label %if.end57

if.end57:                                         ; preds = %if.then17, %if.else30, %if.else45
  %cd.2 = phi i32 [ %conv56, %if.else45 ], [ %conv29, %if.then17 ], [ %conv43, %if.else30 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 100000, ptr noundef nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
