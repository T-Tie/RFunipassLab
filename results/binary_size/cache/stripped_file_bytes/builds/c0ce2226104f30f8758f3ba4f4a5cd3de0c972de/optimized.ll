; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnhrh_2f_.cpp"
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
entry:
  %c = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1000, ptr noundef nonnull align 16 %c) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %c, i64 noundef 1000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #7
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %l.0 = phi i32 [ %conv, %entry ], [ %l.1, %if.end ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc.i1, %if.end ]
  %cmp = icmp slt i32 %i.0, %l.0
  br i1 %cmp, label %for.body, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond
  %cmp27 = icmp sgt i32 %l.0, 0
  %0 = load i8, ptr %c, align 16
  br i1 %cmp27, label %for.cond26, label %for.end35

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp4 = icmp eq i8 %1, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %add = add nsw i32 %i.0, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom8
  %2 = load i8, ptr %arrayidx9, align 1, !tbaa !5, !invariant.load !8
  %cmp11 = icmp eq i8 %2, 32
  br i1 %cmp11, label %for.cond12.preheader, label %if.end

for.cond12.preheader:                             ; preds = %land.lhs.true
  %sub = add nsw i32 %l.0, -1
  %wide.trip.count = sext i32 %sub to i64
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv = phi i64 [ %idxprom, %for.cond12.preheader ], [ %indvars.iv.next, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx18 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %indvars.iv.next
  %3 = load i8, ptr %arrayidx18, align 1, !tbaa !5, !invariant.load !8
  %arrayidx20 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %3, ptr %arrayidx20, align 1, !tbaa !5
  br label %for.cond12

for.end:                                          ; preds = %for.cond12
  %dec21 = add nsw i32 %i.0, -1
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %for.body
  %l.1 = phi i32 [ %sub, %for.end ], [ %l.0, %land.lhs.true ], [ %l.0, %for.body ]
  %i.1 = phi i32 [ %dec21, %for.end ], [ %i.0, %land.lhs.true ], [ %i.0, %for.body ]
  %inc.i1 = add nsw i32 %i.1, 1
  br label %for.cond

for.cond26:                                       ; preds = %for.cond26.preheader, %for.cond26
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %0)
  br label %for.cond26

for.end35:                                        ; preds = %for.cond26.preheader
  call void @llvm.lifetime.end.p0(i64 noundef 1000, ptr noundef nonnull %c) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!8 = !{}
